
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int mode; } ;
struct TYPE_6__ {int error_if_no_space; } ;
struct pool_c {TYPE_4__ adjusted_pf; TYPE_2__ requested_pf; } ;
struct TYPE_7__ {int mode; int error_if_no_space; } ;
struct pool {int out_of_data_space; TYPE_3__ pf; void* process_prepared_mapping; void* process_cell; void* process_discard; void* process_bio; int pmd; int no_space_timeout; int wq; int process_prepared_discard; void* process_discard_cell; int pool_md; TYPE_1__* ti; } ;
typedef enum pool_mode { ____Placeholder_pool_mode } pool_mode ;
struct TYPE_5__ {struct pool_c* private; } ;


 int DMERR (char*,int ) ;
 unsigned long HZ ;





 unsigned long READ_ONCE (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int dm_device_name (int ) ;
 int dm_pool_metadata_needs_check (int ) ;
 int dm_pool_metadata_read_only (int ) ;
 int dm_pool_metadata_read_write (int ) ;
 int error_retry_list (struct pool*) ;
 int get_pool_mode (struct pool*) ;
 int no_space_timeout_secs ;
 int notify_of_pool_mode_change (struct pool*) ;
 void* process_bio ;
 void* process_bio_fail ;
 void* process_bio_read_only ;
 void* process_bio_success ;
 void* process_cell ;
 void* process_cell_fail ;
 void* process_cell_read_only ;
 void* process_cell_success ;
 void* process_discard_bio ;
 int process_prepared_discard_fail ;
 int process_prepared_discard_success ;
 void* process_prepared_mapping ;
 void* process_prepared_mapping_fail ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int set_discard_callbacks (struct pool*) ;

__attribute__((used)) static void set_pool_mode(struct pool *pool, enum pool_mode new_mode)
{
 struct pool_c *pt = pool->ti->private;
 bool needs_check = dm_pool_metadata_needs_check(pool->pmd);
 enum pool_mode old_mode = get_pool_mode(pool);
 unsigned long no_space_timeout = READ_ONCE(no_space_timeout_secs) * HZ;





 if (new_mode == 128 && needs_check) {
  DMERR("%s: unable to switch pool to write mode until repaired.",
        dm_device_name(pool->pool_md));
  if (old_mode != new_mode)
   new_mode = old_mode;
  else
   new_mode = 129;
 }





 if (old_mode == 132)
  new_mode = old_mode;

 switch (new_mode) {
 case 132:
  dm_pool_metadata_read_only(pool->pmd);
  pool->process_bio = process_bio_fail;
  pool->process_discard = process_bio_fail;
  pool->process_cell = process_cell_fail;
  pool->process_discard_cell = process_cell_fail;
  pool->process_prepared_mapping = process_prepared_mapping_fail;
  pool->process_prepared_discard = process_prepared_discard_fail;

  error_retry_list(pool);
  break;

 case 130:
 case 129:
  dm_pool_metadata_read_only(pool->pmd);
  pool->process_bio = process_bio_read_only;
  pool->process_discard = process_bio_success;
  pool->process_cell = process_cell_read_only;
  pool->process_discard_cell = process_cell_success;
  pool->process_prepared_mapping = process_prepared_mapping_fail;
  pool->process_prepared_discard = process_prepared_discard_success;

  error_retry_list(pool);
  break;

 case 131:
  pool->out_of_data_space = 1;
  pool->process_bio = process_bio_read_only;
  pool->process_discard = process_discard_bio;
  pool->process_cell = process_cell_read_only;
  pool->process_prepared_mapping = process_prepared_mapping;
  set_discard_callbacks(pool);

  if (!pool->pf.error_if_no_space && no_space_timeout)
   queue_delayed_work(pool->wq, &pool->no_space_timeout, no_space_timeout);
  break;

 case 128:
  if (old_mode == 131)
   cancel_delayed_work_sync(&pool->no_space_timeout);
  pool->out_of_data_space = 0;
  pool->pf.error_if_no_space = pt->requested_pf.error_if_no_space;
  dm_pool_metadata_read_write(pool->pmd);
  pool->process_bio = process_bio;
  pool->process_discard = process_discard_bio;
  pool->process_cell = process_cell;
  pool->process_prepared_mapping = process_prepared_mapping;
  set_discard_callbacks(pool);
  break;
 }

 pool->pf.mode = new_mode;




 pt->adjusted_pf.mode = new_mode;

 if (old_mode != new_mode)
  notify_of_pool_mode_change(pool);
}
