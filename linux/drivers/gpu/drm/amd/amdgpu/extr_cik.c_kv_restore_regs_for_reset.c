
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kv_reset_save_regs {int gmcon_misc3; int gmcon_misc; int gmcon_reng_execute; } ;
struct amdgpu_device {int dummy; } ;


 int WREG32 (int ,int) ;
 int mmGMCON_MISC ;
 int mmGMCON_MISC3 ;
 int mmGMCON_PGFSM_CONFIG ;
 int mmGMCON_PGFSM_WRITE ;
 int mmGMCON_RENG_EXECUTE ;

__attribute__((used)) static void kv_restore_regs_for_reset(struct amdgpu_device *adev,
          struct kv_reset_save_regs *save)
{
 int i;

 WREG32(mmGMCON_PGFSM_WRITE, 0);
 WREG32(mmGMCON_PGFSM_CONFIG, 0x200010ff);

 for (i = 0; i < 5; i++)
  WREG32(mmGMCON_PGFSM_WRITE, 0);

 WREG32(mmGMCON_PGFSM_WRITE, 0);
 WREG32(mmGMCON_PGFSM_CONFIG, 0x300010ff);

 for (i = 0; i < 5; i++)
  WREG32(mmGMCON_PGFSM_WRITE, 0);

 WREG32(mmGMCON_PGFSM_WRITE, 0x210000);
 WREG32(mmGMCON_PGFSM_CONFIG, 0xa00010ff);

 for (i = 0; i < 5; i++)
  WREG32(mmGMCON_PGFSM_WRITE, 0);

 WREG32(mmGMCON_PGFSM_WRITE, 0x21003);
 WREG32(mmGMCON_PGFSM_CONFIG, 0xb00010ff);

 for (i = 0; i < 5; i++)
  WREG32(mmGMCON_PGFSM_WRITE, 0);

 WREG32(mmGMCON_PGFSM_WRITE, 0x2b00);
 WREG32(mmGMCON_PGFSM_CONFIG, 0xc00010ff);

 for (i = 0; i < 5; i++)
  WREG32(mmGMCON_PGFSM_WRITE, 0);

 WREG32(mmGMCON_PGFSM_WRITE, 0);
 WREG32(mmGMCON_PGFSM_CONFIG, 0xd00010ff);

 for (i = 0; i < 5; i++)
  WREG32(mmGMCON_PGFSM_WRITE, 0);

 WREG32(mmGMCON_PGFSM_WRITE, 0x420000);
 WREG32(mmGMCON_PGFSM_CONFIG, 0x100010ff);

 for (i = 0; i < 5; i++)
  WREG32(mmGMCON_PGFSM_WRITE, 0);

 WREG32(mmGMCON_PGFSM_WRITE, 0x120202);
 WREG32(mmGMCON_PGFSM_CONFIG, 0x500010ff);

 for (i = 0; i < 5; i++)
  WREG32(mmGMCON_PGFSM_WRITE, 0);

 WREG32(mmGMCON_PGFSM_WRITE, 0x3e3e36);
 WREG32(mmGMCON_PGFSM_CONFIG, 0x600010ff);

 for (i = 0; i < 5; i++)
  WREG32(mmGMCON_PGFSM_WRITE, 0);

 WREG32(mmGMCON_PGFSM_WRITE, 0x373f3e);
 WREG32(mmGMCON_PGFSM_CONFIG, 0x700010ff);

 for (i = 0; i < 5; i++)
  WREG32(mmGMCON_PGFSM_WRITE, 0);

 WREG32(mmGMCON_PGFSM_WRITE, 0x3e1332);
 WREG32(mmGMCON_PGFSM_CONFIG, 0xe00010ff);

 WREG32(mmGMCON_MISC3, save->gmcon_misc3);
 WREG32(mmGMCON_MISC, save->gmcon_misc);
 WREG32(mmGMCON_RENG_EXECUTE, save->gmcon_reng_execute);
}
