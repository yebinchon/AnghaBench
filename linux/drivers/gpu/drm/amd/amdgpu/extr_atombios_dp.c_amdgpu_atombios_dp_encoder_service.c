
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* u8 ;
struct TYPE_4__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef int args ;
struct TYPE_5__ {int ucLinkClock; int ucAction; void* ucStatus; void* ucLaneNum; void* ucConfig; } ;
typedef TYPE_2__ DP_ENCODER_SERVICE_PARAMETERS ;


 int COMMAND ;
 int DPEncoderService ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int amdgpu_atom_execute_table (int ,int,int *) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static u8 amdgpu_atombios_dp_encoder_service(struct amdgpu_device *adev,
          int action, int dp_clock,
          u8 ucconfig, u8 lane_num)
{
 DP_ENCODER_SERVICE_PARAMETERS args;
 int index = GetIndexIntoMasterTable(COMMAND, DPEncoderService);

 memset(&args, 0, sizeof(args));
 args.ucLinkClock = dp_clock / 10;
 args.ucConfig = ucconfig;
 args.ucAction = action;
 args.ucLaneNum = lane_num;
 args.ucStatus = 0;

 amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);
 return args.ucStatus;
}
