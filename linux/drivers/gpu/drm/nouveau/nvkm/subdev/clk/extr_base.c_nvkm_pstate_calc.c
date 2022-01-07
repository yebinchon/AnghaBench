
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_clk {int waiting; int wait; int work; } ;


 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int schedule_work (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int
nvkm_pstate_calc(struct nvkm_clk *clk, bool wait)
{
 atomic_set(&clk->waiting, 1);
 schedule_work(&clk->work);
 if (wait)
  wait_event(clk->wait, !atomic_read(&clk->waiting));
 return 0;
}
