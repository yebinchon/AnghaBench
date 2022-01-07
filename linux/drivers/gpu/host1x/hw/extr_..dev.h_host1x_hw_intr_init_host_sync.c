
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct host1x {TYPE_1__* intr_op; } ;
struct TYPE_2__ {int (* init_host_sync ) (struct host1x*,int ,void (*) (struct work_struct*)) ;} ;


 int stub1 (struct host1x*,int ,void (*) (struct work_struct*)) ;

__attribute__((used)) static inline int host1x_hw_intr_init_host_sync(struct host1x *host, u32 cpm,
   void (*syncpt_thresh_work)(struct work_struct *))
{
 return host->intr_op->init_host_sync(host, cpm, syncpt_thresh_work);
}
