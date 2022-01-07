
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iowait_work {TYPE_1__* iow; } ;
struct TYPE_2__ {struct iowait_work* wait; } ;


 size_t IOWAIT_IB_SE ;
 int IOWAIT_PENDING_IB ;
 int IOWAIT_PENDING_TID ;
 int IOWAIT_TID_SE ;
 int iowait_set_flag (TYPE_1__*,int ) ;

int iowait_set_work_flag(struct iowait_work *w)
{
 if (w == &w->iow->wait[IOWAIT_IB_SE]) {
  iowait_set_flag(w->iow, IOWAIT_PENDING_IB);
  return IOWAIT_IB_SE;
 }
 iowait_set_flag(w->iow, IOWAIT_PENDING_TID);
 return IOWAIT_TID_SE;
}
