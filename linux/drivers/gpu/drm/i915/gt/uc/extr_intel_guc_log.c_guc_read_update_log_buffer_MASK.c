#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  full_count; void* buf_addr; } ;
struct intel_guc_log {TYPE_2__ relay; TYPE_1__* stats; } ;
struct guc_log_buffer_state {unsigned int read_ptr; unsigned int sampled_write_ptr; unsigned int buffer_full_cnt; unsigned int write_ptr; scalar_t__ flush_to_file; } ;
typedef  enum guc_log_buffer_type { ____Placeholder_guc_log_buffer_type } guc_log_buffer_type ;
struct TYPE_3__ {int /*<<< orphan*/  flush; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int GUC_ISR_LOG_BUFFER ; 
 int GUC_MAX_LOG_BUFFER ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct intel_guc_log*,int,unsigned int) ; 
 unsigned int FUNC4 (int) ; 
 void* FUNC5 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  FUNC9 (struct guc_log_buffer_state*,struct guc_log_buffer_state*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct intel_guc_log *log)
{
	unsigned int buffer_size, read_offset, write_offset, bytes_to_copy, full_cnt;
	struct guc_log_buffer_state *log_buf_state, *log_buf_snapshot_state;
	struct guc_log_buffer_state log_buf_state_local;
	enum guc_log_buffer_type type;
	void *src_data, *dst_data;
	bool new_overflow;

	FUNC10(&log->relay.lock);

	if (FUNC2(!FUNC8(log)))
		goto out_unlock;

	/* Get the pointer to shared GuC log buffer */
	log_buf_state = src_data = log->relay.buf_addr;

	/* Get the pointer to local buffer to store the logs */
	log_buf_snapshot_state = dst_data = FUNC5(log);

	if (FUNC12(!log_buf_snapshot_state)) {
		/*
		 * Used rate limited to avoid deluge of messages, logs might be
		 * getting consumed by User at a slow rate.
		 */
		FUNC1("no sub-buffer to capture logs\n");
		log->relay.full_count++;

		goto out_unlock;
	}

	/* Actual logs are present from the 2nd page */
	src_data += PAGE_SIZE;
	dst_data += PAGE_SIZE;

	for (type = GUC_ISR_LOG_BUFFER; type < GUC_MAX_LOG_BUFFER; type++) {
		/*
		 * Make a copy of the state structure, inside GuC log buffer
		 * (which is uncached mapped), on the stack to avoid reading
		 * from it multiple times.
		 */
		FUNC9(&log_buf_state_local, log_buf_state,
		       sizeof(struct guc_log_buffer_state));
		buffer_size = FUNC4(type);
		read_offset = log_buf_state_local.read_ptr;
		write_offset = log_buf_state_local.sampled_write_ptr;
		full_cnt = log_buf_state_local.buffer_full_cnt;

		/* Bookkeeping stuff */
		log->stats[type].flush += log_buf_state_local.flush_to_file;
		new_overflow = FUNC3(log, type, full_cnt);

		/* Update the state of shared log buffer */
		log_buf_state->read_ptr = write_offset;
		log_buf_state->flush_to_file = 0;
		log_buf_state++;

		/* First copy the state structure in snapshot buffer */
		FUNC9(log_buf_snapshot_state, &log_buf_state_local,
		       sizeof(struct guc_log_buffer_state));

		/*
		 * The write pointer could have been updated by GuC firmware,
		 * after sending the flush interrupt to Host, for consistency
		 * set write pointer value to same value of sampled_write_ptr
		 * in the snapshot buffer.
		 */
		log_buf_snapshot_state->write_ptr = write_offset;
		log_buf_snapshot_state++;

		/* Now copy the actual logs. */
		if (FUNC12(new_overflow)) {
			/* copy the whole buffer in case of overflow */
			read_offset = 0;
			write_offset = buffer_size;
		} else if (FUNC12((read_offset > buffer_size) ||
				    (write_offset > buffer_size))) {
			FUNC0("invalid log buffer state\n");
			/* copy whole buffer as offsets are unreliable */
			read_offset = 0;
			write_offset = buffer_size;
		}

		/* Just copy the newly written data */
		if (read_offset > write_offset) {
			FUNC7(dst_data, src_data, write_offset);
			bytes_to_copy = buffer_size - read_offset;
		} else {
			bytes_to_copy = write_offset - read_offset;
		}
		FUNC7(dst_data + read_offset,
				    src_data + read_offset, bytes_to_copy);

		src_data += buffer_size;
		dst_data += buffer_size;
	}

	FUNC6(log);

out_unlock:
	FUNC11(&log->relay.lock);
}