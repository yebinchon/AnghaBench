
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; int full_count; void* buf_addr; } ;
struct intel_guc_log {TYPE_2__ relay; TYPE_1__* stats; } ;
struct guc_log_buffer_state {unsigned int read_ptr; unsigned int sampled_write_ptr; unsigned int buffer_full_cnt; unsigned int write_ptr; scalar_t__ flush_to_file; } ;
typedef enum guc_log_buffer_type { ____Placeholder_guc_log_buffer_type } guc_log_buffer_type ;
struct TYPE_3__ {int flush; } ;


 int DRM_ERROR (char*) ;
 int DRM_ERROR_RATELIMITED (char*) ;
 int GUC_ISR_LOG_BUFFER ;
 int GUC_MAX_LOG_BUFFER ;
 int PAGE_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int guc_check_log_buf_overflow (struct intel_guc_log*,int,unsigned int) ;
 unsigned int guc_get_log_buffer_size (int) ;
 void* guc_get_write_buffer (struct intel_guc_log*) ;
 int guc_move_to_next_buf (struct intel_guc_log*) ;
 int i915_memcpy_from_wc (void*,void*,unsigned int) ;
 int intel_guc_log_relay_enabled (struct intel_guc_log*) ;
 int memcpy (struct guc_log_buffer_state*,struct guc_log_buffer_state*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void guc_read_update_log_buffer(struct intel_guc_log *log)
{
 unsigned int buffer_size, read_offset, write_offset, bytes_to_copy, full_cnt;
 struct guc_log_buffer_state *log_buf_state, *log_buf_snapshot_state;
 struct guc_log_buffer_state log_buf_state_local;
 enum guc_log_buffer_type type;
 void *src_data, *dst_data;
 bool new_overflow;

 mutex_lock(&log->relay.lock);

 if (WARN_ON(!intel_guc_log_relay_enabled(log)))
  goto out_unlock;


 log_buf_state = src_data = log->relay.buf_addr;


 log_buf_snapshot_state = dst_data = guc_get_write_buffer(log);

 if (unlikely(!log_buf_snapshot_state)) {




  DRM_ERROR_RATELIMITED("no sub-buffer to capture logs\n");
  log->relay.full_count++;

  goto out_unlock;
 }


 src_data += PAGE_SIZE;
 dst_data += PAGE_SIZE;

 for (type = GUC_ISR_LOG_BUFFER; type < GUC_MAX_LOG_BUFFER; type++) {





  memcpy(&log_buf_state_local, log_buf_state,
         sizeof(struct guc_log_buffer_state));
  buffer_size = guc_get_log_buffer_size(type);
  read_offset = log_buf_state_local.read_ptr;
  write_offset = log_buf_state_local.sampled_write_ptr;
  full_cnt = log_buf_state_local.buffer_full_cnt;


  log->stats[type].flush += log_buf_state_local.flush_to_file;
  new_overflow = guc_check_log_buf_overflow(log, type, full_cnt);


  log_buf_state->read_ptr = write_offset;
  log_buf_state->flush_to_file = 0;
  log_buf_state++;


  memcpy(log_buf_snapshot_state, &log_buf_state_local,
         sizeof(struct guc_log_buffer_state));







  log_buf_snapshot_state->write_ptr = write_offset;
  log_buf_snapshot_state++;


  if (unlikely(new_overflow)) {

   read_offset = 0;
   write_offset = buffer_size;
  } else if (unlikely((read_offset > buffer_size) ||
        (write_offset > buffer_size))) {
   DRM_ERROR("invalid log buffer state\n");

   read_offset = 0;
   write_offset = buffer_size;
  }


  if (read_offset > write_offset) {
   i915_memcpy_from_wc(dst_data, src_data, write_offset);
   bytes_to_copy = buffer_size - read_offset;
  } else {
   bytes_to_copy = write_offset - read_offset;
  }
  i915_memcpy_from_wc(dst_data + read_offset,
        src_data + read_offset, bytes_to_copy);

  src_data += buffer_size;
  dst_data += buffer_size;
 }

 guc_move_to_next_buf(log);

out_unlock:
 mutex_unlock(&log->relay.lock);
}
