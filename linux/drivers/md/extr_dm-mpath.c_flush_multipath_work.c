
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {scalar_t__ queue_mode; int trigger_event; int process_queued_bios; int flags; int pg_init_in_progress; scalar_t__ hw_handler_name; } ;


 scalar_t__ DM_TYPE_BIO_BASED ;
 int MPATHF_PG_INIT_DISABLED ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int flush_work (int *) ;
 int flush_workqueue (int ) ;
 int kmpath_handlerd ;
 int multipath_wait_for_pg_init_completion (struct multipath*) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;

__attribute__((used)) static void flush_multipath_work(struct multipath *m)
{
 if (m->hw_handler_name) {
  set_bit(MPATHF_PG_INIT_DISABLED, &m->flags);
  smp_mb__after_atomic();

  if (atomic_read(&m->pg_init_in_progress))
   flush_workqueue(kmpath_handlerd);
  multipath_wait_for_pg_init_completion(m);

  clear_bit(MPATHF_PG_INIT_DISABLED, &m->flags);
  smp_mb__after_atomic();
 }

 if (m->queue_mode == DM_TYPE_BIO_BASED)
  flush_work(&m->process_queued_bios);
 flush_work(&m->trigger_event);
}
