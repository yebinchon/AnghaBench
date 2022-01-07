
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu7_hwmgr {scalar_t__ soft_regs_start; } ;
struct pp_hwmgr {int device; scalar_t__ backend; } ;


 int CGS_IND_REG__SMC ;
 int HandshakeDisables ;
 int SMU_SoftRegisters ;
 int SMU_UVD_MCLK_HANDSHAKE_DISABLE ;
 scalar_t__ cgs_read_ind_register (int ,int ,scalar_t__) ;
 int cgs_write_ind_register (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ smum_get_mac_definition (struct pp_hwmgr*,int ) ;
 scalar_t__ smum_get_offsetof (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu7_disable_handshake_uvd(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 uint32_t soft_register_value = 0;
 uint32_t handshake_disables_offset = data->soft_regs_start
    + smum_get_offsetof(hwmgr,
     SMU_SoftRegisters, HandshakeDisables);

 soft_register_value = cgs_read_ind_register(hwmgr->device,
    CGS_IND_REG__SMC, handshake_disables_offset);
 soft_register_value |= smum_get_mac_definition(hwmgr,
     SMU_UVD_MCLK_HANDSHAKE_DISABLE);
 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
   handshake_disables_offset, soft_register_value);
 return 0;
}
