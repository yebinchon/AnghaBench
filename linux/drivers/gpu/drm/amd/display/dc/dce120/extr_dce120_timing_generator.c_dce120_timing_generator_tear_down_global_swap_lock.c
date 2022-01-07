
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC0_CRTC_GSL_CONTROL ;
 int CRTC_GSL_CHECK_LINE_NUM ;
 int CRTC_GSL_FORCE_DELAY ;
 int CRTC_REG_SET_2 (int ,int ,int ,int ,int) ;
 int CRTC_REG_SET_N (int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int DCP0_DCP_GSL_CONTROL ;
 int DCP0_DCP_GSL_CONTROL__DCP_GSL0_EN ;
 int DCP0_DCP_GSL_CONTROL__DCP_GSL_DELAY_SURFACE_UPDATE_PENDING ;
 int DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_CHECK_DELAY ;
 int DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_FORCE_DELAY ;
 int DCP0_DCP_GSL_CONTROL__DCP_GSL_MASTER_EN ;
 int DCP0_DCP_GSL_CONTROL__DCP_GSL_SYNC_SOURCE ;
 int FD (int ) ;
 int HFLIP_CHECK_DELAY ;
 int HFLIP_READY_DELAY ;

void dce120_timing_generator_tear_down_global_swap_lock(
 struct timing_generator *tg)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);


 CRTC_REG_SET_N(DCP0_DCP_GSL_CONTROL, 6,
   FD(DCP0_DCP_GSL_CONTROL__DCP_GSL0_EN), 0,
   FD(DCP0_DCP_GSL_CONTROL__DCP_GSL_MASTER_EN), 0,
   FD(DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_FORCE_DELAY), HFLIP_READY_DELAY,
   FD(DCP0_DCP_GSL_CONTROL__DCP_GSL_HSYNC_FLIP_CHECK_DELAY), HFLIP_CHECK_DELAY,

   FD(DCP0_DCP_GSL_CONTROL__DCP_GSL_SYNC_SOURCE), 0,
   FD(DCP0_DCP_GSL_CONTROL__DCP_GSL_DELAY_SURFACE_UPDATE_PENDING), 0);

 CRTC_REG_SET_2(CRTC0_CRTC_GSL_CONTROL,
         CRTC_GSL_CHECK_LINE_NUM, 0,
         CRTC_GSL_FORCE_DELAY, 0x2);
}
