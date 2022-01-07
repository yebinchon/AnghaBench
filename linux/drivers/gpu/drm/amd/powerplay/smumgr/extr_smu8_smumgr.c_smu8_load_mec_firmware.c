
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu8_smumgr {int dummy; } ;
struct pp_hwmgr {int * device; struct smu8_smumgr* smu_backend; } ;
struct cgs_firmware_info {int mc_addr; int member_0; } ;


 int ATC ;
 int CACHE_POLICY ;
 int CGS_UCODE_ID_CP_MEC ;
 int CP_CPC_IC_BASE_CNTL ;
 int CP_CPC_IC_BASE_HI ;
 int CP_CPC_IC_BASE_LO ;
 int CP_MEC_CNTL ;
 int EINVAL ;
 int IC_BASE_HI ;
 int IC_BASE_LO ;
 int MEC_ME1_HALT ;
 int MEC_ME2_HALT ;
 int MTYPE ;
 int PHM_FIELD_MASK (int ,int ) ;
 int PHM_SET_FIELD (int,int ,int ,int) ;
 int VMID ;
 int cgs_get_firmware_info (int *,int ,struct cgs_firmware_info*) ;
 int cgs_read_register (int *,int ) ;
 int cgs_write_register (int *,int ,int) ;
 int lower_32_bits (int ) ;
 int mmCP_CPC_IC_BASE_CNTL ;
 int mmCP_CPC_IC_BASE_HI ;
 int mmCP_CPC_IC_BASE_LO ;
 int mmCP_MEC_CNTL ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int smu8_load_mec_firmware(struct pp_hwmgr *hwmgr)
{
 uint32_t reg_data;
 uint32_t tmp;
 int ret = 0;
 struct cgs_firmware_info info = {0};
 struct smu8_smumgr *smu8_smu;

 if (hwmgr == ((void*)0) || hwmgr->device == ((void*)0))
  return -EINVAL;

 smu8_smu = hwmgr->smu_backend;
 ret = cgs_get_firmware_info(hwmgr->device,
      CGS_UCODE_ID_CP_MEC, &info);

 if (ret)
  return -EINVAL;


 tmp = cgs_read_register(hwmgr->device,
     mmCP_MEC_CNTL);
 tmp = PHM_SET_FIELD(tmp, CP_MEC_CNTL, MEC_ME1_HALT, 1);
 tmp = PHM_SET_FIELD(tmp, CP_MEC_CNTL, MEC_ME2_HALT, 1);
 cgs_write_register(hwmgr->device, mmCP_MEC_CNTL, tmp);

 tmp = cgs_read_register(hwmgr->device,
     mmCP_CPC_IC_BASE_CNTL);

 tmp = PHM_SET_FIELD(tmp, CP_CPC_IC_BASE_CNTL, VMID, 0);
 tmp = PHM_SET_FIELD(tmp, CP_CPC_IC_BASE_CNTL, ATC, 0);
 tmp = PHM_SET_FIELD(tmp, CP_CPC_IC_BASE_CNTL, CACHE_POLICY, 0);
 tmp = PHM_SET_FIELD(tmp, CP_CPC_IC_BASE_CNTL, MTYPE, 1);
 cgs_write_register(hwmgr->device, mmCP_CPC_IC_BASE_CNTL, tmp);

 reg_data = lower_32_bits(info.mc_addr) &
   PHM_FIELD_MASK(CP_CPC_IC_BASE_LO, IC_BASE_LO);
 cgs_write_register(hwmgr->device, mmCP_CPC_IC_BASE_LO, reg_data);

 reg_data = upper_32_bits(info.mc_addr) &
   PHM_FIELD_MASK(CP_CPC_IC_BASE_HI, IC_BASE_HI);
 cgs_write_register(hwmgr->device, mmCP_CPC_IC_BASE_HI, reg_data);

 return 0;
}
