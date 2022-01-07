
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dispc_device {TYPE_1__* feat; } ;
struct TYPE_2__ {int buffer_size_unit; scalar_t__ has_writeback; } ;


 int DISPC_GLOBAL_MFLAG_ATTRIBUTE ;
 int OMAP_DSS_WB ;
 int dispc_get_num_ovls (struct dispc_device*) ;
 int dispc_ovl_get_fifo_size (struct dispc_device*,int) ;
 int dispc_ovl_set_mflag (struct dispc_device*,int,int) ;
 int dispc_ovl_set_mflag_threshold (struct dispc_device*,int,int,int) ;
 int dispc_write_reg (struct dispc_device*,int ,int) ;

__attribute__((used)) static void dispc_init_mflag(struct dispc_device *dispc)
{
 int i;
 dispc_write_reg(dispc, DISPC_GLOBAL_MFLAG_ATTRIBUTE,
  (1 << 0) |
  (0 << 2));

 for (i = 0; i < dispc_get_num_ovls(dispc); ++i) {
  u32 size = dispc_ovl_get_fifo_size(dispc, i);
  u32 unit = dispc->feat->buffer_size_unit;
  u32 low, high;

  dispc_ovl_set_mflag(dispc, i, 1);







  low = size * 4 / 8 / unit;
  high = size * 5 / 8 / unit;

  dispc_ovl_set_mflag_threshold(dispc, i, low, high);
 }

 if (dispc->feat->has_writeback) {
  u32 size = dispc_ovl_get_fifo_size(dispc, OMAP_DSS_WB);
  u32 unit = dispc->feat->buffer_size_unit;
  u32 low, high;

  dispc_ovl_set_mflag(dispc, OMAP_DSS_WB, 1);







  low = size * 4 / 8 / unit;
  high = size * 5 / 8 / unit;

  dispc_ovl_set_mflag_threshold(dispc, OMAP_DSS_WB, low, high);
 }
}
