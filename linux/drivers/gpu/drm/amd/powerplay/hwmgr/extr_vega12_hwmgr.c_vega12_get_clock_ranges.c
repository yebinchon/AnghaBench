
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vega12_hwmgr {TYPE_1__* clk_range; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_2__ {int ACMin; int ACMax; } ;
typedef size_t PPCLK_e ;



__attribute__((used)) static int vega12_get_clock_ranges(struct pp_hwmgr *hwmgr,
  uint32_t *clock,
  PPCLK_e clock_select,
  bool max)
{
 struct vega12_hwmgr *data = (struct vega12_hwmgr *)(hwmgr->backend);

 if (max)
  *clock = data->clk_range[clock_select].ACMax;
 else
  *clock = data->clk_range[clock_select].ACMin;

 return 0;
}
