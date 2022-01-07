
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu7_hwmgr {scalar_t__ soft_regs_start; } ;
struct pp_hwmgr {int device; scalar_t__ backend; } ;


 int CGS_IND_REG__SMC ;
 int DRAM_LOG_ADDR_H ;
 int DRAM_LOG_ADDR_L ;
 int DRAM_LOG_BUFF_SIZE ;
 int DRAM_LOG_PHY_ADDR_H ;
 int DRAM_LOG_PHY_ADDR_L ;
 int SMU_SoftRegisters ;
 int cgs_write_ind_register (int ,int ,scalar_t__,int ) ;
 scalar_t__ smum_get_offsetof (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu7_notify_cac_buffer_info(struct pp_hwmgr *hwmgr,
     uint32_t virtual_addr_low,
     uint32_t virtual_addr_hi,
     uint32_t mc_addr_low,
     uint32_t mc_addr_hi,
     uint32_t size)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
     data->soft_regs_start +
     smum_get_offsetof(hwmgr,
     SMU_SoftRegisters, DRAM_LOG_ADDR_H),
     mc_addr_hi);

 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
     data->soft_regs_start +
     smum_get_offsetof(hwmgr,
     SMU_SoftRegisters, DRAM_LOG_ADDR_L),
     mc_addr_low);

 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
     data->soft_regs_start +
     smum_get_offsetof(hwmgr,
     SMU_SoftRegisters, DRAM_LOG_PHY_ADDR_H),
     virtual_addr_hi);

 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
     data->soft_regs_start +
     smum_get_offsetof(hwmgr,
     SMU_SoftRegisters, DRAM_LOG_PHY_ADDR_L),
     virtual_addr_low);

 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
     data->soft_regs_start +
     smum_get_offsetof(hwmgr,
     SMU_SoftRegisters, DRAM_LOG_BUFF_SIZE),
     size);
 return 0;
}
