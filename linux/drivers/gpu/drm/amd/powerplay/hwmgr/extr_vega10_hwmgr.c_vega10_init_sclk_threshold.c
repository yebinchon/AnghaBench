
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vega10_hwmgr {scalar_t__ low_sclk_interrupt_threshold; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;



__attribute__((used)) static int vega10_init_sclk_threshold(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;

 data->low_sclk_interrupt_threshold = 0;

 return 0;
}
