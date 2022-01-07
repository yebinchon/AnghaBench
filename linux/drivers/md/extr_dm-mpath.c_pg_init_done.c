
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priority_group {int bypassed; struct multipath* m; } ;
struct pgpath {struct priority_group* pg; } ;
struct multipath {int lock; int pg_init_wait; int flags; int pg_init_in_progress; int * current_pg; struct pgpath* current_pgpath; int hw_handler_name; } ;


 int DMERR (char*,int,...) ;
 int MPATHF_PG_INIT_DELAY_RETRY ;
 int MPATHF_PG_INIT_REQUIRED ;
 int MPATHF_QUEUE_IO ;







 scalar_t__ __pg_init_all_paths (struct multipath*) ;
 scalar_t__ atomic_dec_return (int *) ;
 int bypass_pg (struct multipath*,struct priority_group*,int) ;
 int clear_bit (int ,int *) ;
 int fail_path (struct pgpath*) ;
 int pg_init_limit_reached (struct multipath*,struct pgpath*) ;
 int process_queued_io_list (struct multipath*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void pg_init_done(void *data, int errors)
{
 struct pgpath *pgpath = data;
 struct priority_group *pg = pgpath->pg;
 struct multipath *m = pg->m;
 unsigned long flags;
 bool delay_retry = 0;


 switch (errors) {
 case 130:
  break;
 case 131:
  if (!m->hw_handler_name) {
   errors = 0;
   break;
  }
  DMERR("Could not failover the device: Handler scsi_dh_%s "
        "Error %d.", m->hw_handler_name, errors);



  fail_path(pgpath);
  break;
 case 133:




  bypass_pg(m, pg, 1);
  break;
 case 128:

  delay_retry = 1;

 case 132:
 case 129:
  if (pg_init_limit_reached(m, pgpath))
   fail_path(pgpath);
  errors = 0;
  break;
 case 134:
 default:





  fail_path(pgpath);
 }

 spin_lock_irqsave(&m->lock, flags);
 if (errors) {
  if (pgpath == m->current_pgpath) {
   DMERR("Could not failover device. Error %d.", errors);
   m->current_pgpath = ((void*)0);
   m->current_pg = ((void*)0);
  }
 } else if (!test_bit(MPATHF_PG_INIT_REQUIRED, &m->flags))
  pg->bypassed = 0;

 if (atomic_dec_return(&m->pg_init_in_progress) > 0)

  goto out;

 if (test_bit(MPATHF_PG_INIT_REQUIRED, &m->flags)) {
  if (delay_retry)
   set_bit(MPATHF_PG_INIT_DELAY_RETRY, &m->flags);
  else
   clear_bit(MPATHF_PG_INIT_DELAY_RETRY, &m->flags);

  if (__pg_init_all_paths(m))
   goto out;
 }
 clear_bit(MPATHF_QUEUE_IO, &m->flags);

 process_queued_io_list(m);




 wake_up(&m->pg_init_wait);

out:
 spin_unlock_irqrestore(&m->lock, flags);
}
