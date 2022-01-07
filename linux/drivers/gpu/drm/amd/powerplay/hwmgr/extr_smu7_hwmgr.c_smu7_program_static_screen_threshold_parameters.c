
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_hwmgr {int static_screen_threshold; int static_screen_threshold_unit; } ;
struct pp_hwmgr {int device; scalar_t__ backend; } ;


 int CGS_IND_REG__SMC ;
 int CG_STATIC_SCREEN_PARAMETER ;
 int PHM_WRITE_INDIRECT_FIELD (int ,int ,int ,int ,int ) ;
 int STATIC_SCREEN_THRESHOLD ;
 int STATIC_SCREEN_THRESHOLD_UNIT ;

__attribute__((used)) static int smu7_program_static_screen_threshold_parameters(
       struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);


 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_STATIC_SCREEN_PARAMETER, STATIC_SCREEN_THRESHOLD_UNIT,
   data->static_screen_threshold_unit);

 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_STATIC_SCREEN_PARAMETER, STATIC_SCREEN_THRESHOLD,
   data->static_screen_threshold);

 return 0;
}
