
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hideep_ts {int nvm_mask; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int HIDEEP_FLASH_CFG ;
 int HIDEEP_NVM_DEFAULT_PAGE ;
 int HIDEEP_NVM_MASK_OFS ;
 int HIDEEP_NVM_SFR_RPAGE ;
 int HIDEEP_NVM_SFR_WPAGE ;
 int HIDEEP_PROT_MODE ;
 int NVM_W_SFR (int ,int ) ;
 int SET_FLASH_HWCONTROL () ;
 int SET_FLASH_PIO (int ) ;
 int dev_warn (int *,char*,int ,int ) ;
 int hideep_pgm_r_reg (struct hideep_ts*,int,int *) ;
 int hideep_pgm_w_reg (struct hideep_ts*,int ,int ) ;

__attribute__((used)) static void hideep_nvm_unlock(struct hideep_ts *ts)
{
 u32 unmask_code;

 hideep_pgm_w_reg(ts, HIDEEP_FLASH_CFG, HIDEEP_NVM_SFR_RPAGE);
 hideep_pgm_r_reg(ts, 0x0000000C, &unmask_code);
 hideep_pgm_w_reg(ts, HIDEEP_FLASH_CFG, HIDEEP_NVM_DEFAULT_PAGE);


 unmask_code &= ~HIDEEP_PROT_MODE;


 if (unmask_code != ts->nvm_mask)
  dev_warn(&ts->client->dev,
    "read mask code different %#08x vs %#08x",
    unmask_code, ts->nvm_mask);

 hideep_pgm_w_reg(ts, HIDEEP_FLASH_CFG, HIDEEP_NVM_SFR_WPAGE);
 SET_FLASH_PIO(0);

 NVM_W_SFR(HIDEEP_NVM_MASK_OFS, ts->nvm_mask);
 SET_FLASH_HWCONTROL();
 hideep_pgm_w_reg(ts, HIDEEP_FLASH_CFG, HIDEEP_NVM_DEFAULT_PAGE);
}
