
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priority_group {int dummy; } ;
struct multipath {int pg_init_count; int flags; scalar_t__ hw_handler_name; struct priority_group* current_pg; } ;


 int MPATHF_PG_INIT_REQUIRED ;
 int MPATHF_QUEUE_IO ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void __switch_pg(struct multipath *m, struct priority_group *pg)
{
 m->current_pg = pg;


 if (m->hw_handler_name) {
  set_bit(MPATHF_PG_INIT_REQUIRED, &m->flags);
  set_bit(MPATHF_QUEUE_IO, &m->flags);
 } else {
  clear_bit(MPATHF_PG_INIT_REQUIRED, &m->flags);
  clear_bit(MPATHF_QUEUE_IO, &m->flags);
 }

 atomic_set(&m->pg_init_count, 0);
}
