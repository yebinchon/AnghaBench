
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct dispc_device {TYPE_1__* feat; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int mgr_width_start; int mgr_height_start; } ;


 int DISPC_SIZE_MGR (int) ;
 int FLD_VAL (scalar_t__,int ,int) ;
 int dispc_write_reg (struct dispc_device*,int ,int) ;

__attribute__((used)) static void dispc_mgr_set_size(struct dispc_device *dispc,
          enum omap_channel channel, u16 width, u16 height)
{
 u32 val;

 val = FLD_VAL(height - 1, dispc->feat->mgr_height_start, 16) |
  FLD_VAL(width - 1, dispc->feat->mgr_width_start, 0);

 dispc_write_reg(dispc, DISPC_SIZE_MGR(channel), val);
}
