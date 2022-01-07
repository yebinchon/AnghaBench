
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hdmi_context {TYPE_1__* drv_data; } ;
struct TYPE_2__ {size_t type; } ;


 int HDMI_MAPPED_BASE ;
 int** hdmi_reg_map ;

__attribute__((used)) static inline u32 hdmi_map_reg(struct hdmi_context *hdata, u32 reg_id)
{
 if ((reg_id & 0xffff0000) == HDMI_MAPPED_BASE)
  return hdmi_reg_map[reg_id & 0xffff][hdata->drv_data->type];
 return reg_id;
}
