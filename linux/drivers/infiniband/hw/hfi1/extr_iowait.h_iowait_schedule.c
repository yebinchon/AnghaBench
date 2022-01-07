
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct workqueue_struct {int dummy; } ;
struct iowait {TYPE_1__* wait; } ;
struct TYPE_2__ {int iowork; } ;


 size_t IOWAIT_IB_SE ;
 int queue_work_on (int,struct workqueue_struct*,int *) ;

__attribute__((used)) static inline bool iowait_schedule(struct iowait *wait,
       struct workqueue_struct *wq, int cpu)
{
 return !!queue_work_on(cpu, wq, &wait->wait[IOWAIT_IB_SE].iowork);
}
