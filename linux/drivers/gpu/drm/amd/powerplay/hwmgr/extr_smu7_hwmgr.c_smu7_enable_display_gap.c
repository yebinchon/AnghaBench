
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int CG_DISPLAY_GAP_CNTL ;
 int DISPLAY_GAP_IGNORE ;
 int DISPLAY_GAP_VBLANK ;
 int DISP_GAP ;
 int DISP_GAP_MCHG ;
 int PHM_SET_FIELD (int ,int ,int ,int ) ;
 int cgs_read_ind_register (int ,int ,int ) ;
 int cgs_write_ind_register (int ,int ,int ,int ) ;
 int ixCG_DISPLAY_GAP_CNTL ;

__attribute__((used)) static int smu7_enable_display_gap(struct pp_hwmgr *hwmgr)
{
 uint32_t display_gap =
   cgs_read_ind_register(hwmgr->device, CGS_IND_REG__SMC,
     ixCG_DISPLAY_GAP_CNTL);

 display_gap = PHM_SET_FIELD(display_gap, CG_DISPLAY_GAP_CNTL,
   DISP_GAP, DISPLAY_GAP_IGNORE);

 display_gap = PHM_SET_FIELD(display_gap, CG_DISPLAY_GAP_CNTL,
   DISP_GAP_MCHG, DISPLAY_GAP_VBLANK);

 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
   ixCG_DISPLAY_GAP_CNTL, display_gap);

 return 0;
}
