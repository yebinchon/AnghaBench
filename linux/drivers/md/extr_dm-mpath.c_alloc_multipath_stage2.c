
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {scalar_t__ queue_mode; int pg_init_wait; int pg_init_delay_msecs; int pg_init_count; int pg_init_in_progress; int flags; int process_queued_bios; } ;
struct dm_target {int table; } ;


 int DM_PG_INIT_DELAY_DEFAULT ;
 scalar_t__ DM_TYPE_BIO_BASED ;
 scalar_t__ DM_TYPE_NONE ;
 scalar_t__ DM_TYPE_REQUEST_BASED ;
 int INIT_WORK (int *,int ) ;
 int MPATHF_QUEUE_IO ;
 int MPATHF_RETAIN_ATTACHED_HW_HANDLER ;
 int atomic_set (int *,int ) ;
 int dm_table_set_type (int ,scalar_t__) ;
 int init_waitqueue_head (int *) ;
 int process_queued_bios ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int alloc_multipath_stage2(struct dm_target *ti, struct multipath *m)
{
 if (m->queue_mode == DM_TYPE_NONE) {
  m->queue_mode = DM_TYPE_REQUEST_BASED;
 } else if (m->queue_mode == DM_TYPE_BIO_BASED) {
  INIT_WORK(&m->process_queued_bios, process_queued_bios);




  set_bit(MPATHF_RETAIN_ATTACHED_HW_HANDLER, &m->flags);
 }

 dm_table_set_type(ti->table, m->queue_mode);





 set_bit(MPATHF_QUEUE_IO, &m->flags);
 atomic_set(&m->pg_init_in_progress, 0);
 atomic_set(&m->pg_init_count, 0);
 m->pg_init_delay_msecs = DM_PG_INIT_DELAY_DEFAULT;
 init_waitqueue_head(&m->pg_init_wait);

 return 0;
}
