
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tpt_top; int tpt_base; } ;
struct cxio_rdev {TYPE_1__ rnic_info; } ;


 scalar_t__ T3_MAX_NUM_STAG ;
 int min (int,int) ;

__attribute__((used)) static inline int cxio_num_stags(struct cxio_rdev *rdev_p)
{
 return min((int)T3_MAX_NUM_STAG, (int)((rdev_p->rnic_info.tpt_top - rdev_p->rnic_info.tpt_base) >> 5));
}
