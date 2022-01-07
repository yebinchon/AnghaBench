
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dispc_reg_field {int low; int high; int reg; } ;
struct dispc_device {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
typedef enum mgr_reg_fields { ____Placeholder_mgr_reg_fields } mgr_reg_fields ;
struct TYPE_2__ {struct dispc_reg_field* reg_desc; } ;


 int REG_GET (struct dispc_device*,int ,int ,int ) ;
 TYPE_1__* mgr_desc ;

__attribute__((used)) static u32 mgr_fld_read(struct dispc_device *dispc, enum omap_channel channel,
   enum mgr_reg_fields regfld)
{
 const struct dispc_reg_field rfld = mgr_desc[channel].reg_desc[regfld];

 return REG_GET(dispc, rfld.reg, rfld.high, rfld.low);
}
