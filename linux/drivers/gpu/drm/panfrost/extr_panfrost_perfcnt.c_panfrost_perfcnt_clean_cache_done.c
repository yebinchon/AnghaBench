
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panfrost_device {TYPE_1__* perfcnt; } ;
struct TYPE_2__ {int dump_comp; } ;


 int complete (int *) ;

void panfrost_perfcnt_clean_cache_done(struct panfrost_device *pfdev)
{
 complete(&pfdev->perfcnt->dump_comp);
}
