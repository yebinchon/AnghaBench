
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_syncpt {int dummy; } ;
struct host1x {struct host1x_syncpt* syncpt; } ;


 int host1x_hw_syncpt_restore (struct host1x*,struct host1x_syncpt*) ;
 int host1x_hw_syncpt_restore_wait_base (struct host1x*,struct host1x_syncpt*) ;
 unsigned int host1x_syncpt_nb_bases (struct host1x*) ;
 unsigned int host1x_syncpt_nb_pts (struct host1x*) ;
 int wmb () ;

void host1x_syncpt_restore(struct host1x *host)
{
 struct host1x_syncpt *sp_base = host->syncpt;
 unsigned int i;

 for (i = 0; i < host1x_syncpt_nb_pts(host); i++)
  host1x_hw_syncpt_restore(host, sp_base + i);

 for (i = 0; i < host1x_syncpt_nb_bases(host); i++)
  host1x_hw_syncpt_restore_wait_base(host, sp_base + i);

 wmb();
}
