
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct dispc_device {int* fifo_assignment; TYPE_1__* feat; int * fifo_size; } ;
struct TYPE_2__ {int num_fifos; scalar_t__ has_writeback; scalar_t__ gfx_fifo_workaround; int buffer_size_unit; } ;


 int DISPC_GLOBAL_BUFFER ;
 int DISPC_OVL_FIFO_SIZE_STATUS (int) ;
 int FEAT_REG_FIFOSIZE ;
 int FLD_MOD (int ,int,int,int) ;
 size_t OMAP_DSS_GFX ;
 size_t OMAP_DSS_WB ;
 int REG_GET (struct dispc_device*,int ,int ,int ) ;
 int dispc_get_num_ovls (struct dispc_device*) ;
 int dispc_get_reg_field (struct dispc_device*,int ,int *,int *) ;
 int dispc_ovl_compute_fifo_thresholds (struct dispc_device*,size_t,int *,int *,int const,int const) ;
 int dispc_ovl_set_fifo_threshold (struct dispc_device*,size_t,int ,int ) ;
 int dispc_read_reg (struct dispc_device*,int ) ;
 int dispc_write_reg (struct dispc_device*,int ,int ) ;

__attribute__((used)) static void dispc_init_fifos(struct dispc_device *dispc)
{
 u32 size;
 int fifo;
 u8 start, end;
 u32 unit;
 int i;

 unit = dispc->feat->buffer_size_unit;

 dispc_get_reg_field(dispc, FEAT_REG_FIFOSIZE, &start, &end);

 for (fifo = 0; fifo < dispc->feat->num_fifos; ++fifo) {
  size = REG_GET(dispc, DISPC_OVL_FIFO_SIZE_STATUS(fifo),
          start, end);
  size *= unit;
  dispc->fifo_size[fifo] = size;





  dispc->fifo_assignment[fifo] = fifo;
 }
 if (dispc->feat->gfx_fifo_workaround) {
  u32 v;

  v = dispc_read_reg(dispc, DISPC_GLOBAL_BUFFER);

  v = FLD_MOD(v, 4, 2, 0);
  v = FLD_MOD(v, 4, 5, 3);
  v = FLD_MOD(v, 0, 26, 24);
  v = FLD_MOD(v, 0, 29, 27);

  dispc_write_reg(dispc, DISPC_GLOBAL_BUFFER, v);

  dispc->fifo_assignment[OMAP_DSS_GFX] = OMAP_DSS_WB;
  dispc->fifo_assignment[OMAP_DSS_WB] = OMAP_DSS_GFX;
 }




 for (i = 0; i < dispc_get_num_ovls(dispc); ++i) {
  u32 low, high;
  const bool use_fifomerge = 0;
  const bool manual_update = 0;

  dispc_ovl_compute_fifo_thresholds(dispc, i, &low, &high,
        use_fifomerge, manual_update);

  dispc_ovl_set_fifo_threshold(dispc, i, low, high);
 }

 if (dispc->feat->has_writeback) {
  u32 low, high;
  const bool use_fifomerge = 0;
  const bool manual_update = 0;

  dispc_ovl_compute_fifo_thresholds(dispc, OMAP_DSS_WB,
        &low, &high, use_fifomerge,
        manual_update);

  dispc_ovl_set_fifo_threshold(dispc, OMAP_DSS_WB, low, high);
 }
}
