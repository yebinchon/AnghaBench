
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmcu {int dummy; } ;
struct dce_dmcu {int dummy; } ;


 int DCI_MEM_PWR_STATUS ;
 int DMCU_IRAM_MEM_PWR_STATE ;
 int DMCU_IRAM_WR_CTRL ;
 int DMCU_IRAM_WR_DATA ;
 int DMCU_RAM_ACCESS_CTRL ;
 int IRAM_HOST_ACCESS_EN ;
 int IRAM_WR_ADDR_AUTO_INC ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_WAIT (int ,int ,int ,int,int) ;
 int REG_WRITE (int ,char const) ;
 struct dce_dmcu* TO_DCE_DMCU (struct dmcu*) ;

bool dce_dmcu_load_iram(struct dmcu *dmcu,
  unsigned int start_offset,
  const char *src,
  unsigned int bytes)
{
 struct dce_dmcu *dmcu_dce = TO_DCE_DMCU(dmcu);
 unsigned int count = 0;


 REG_UPDATE_2(DMCU_RAM_ACCESS_CTRL,
   IRAM_HOST_ACCESS_EN, 1,
   IRAM_WR_ADDR_AUTO_INC, 1);

 REG_WAIT(DCI_MEM_PWR_STATUS, DMCU_IRAM_MEM_PWR_STATE, 0, 2, 10);

 REG_WRITE(DMCU_IRAM_WR_CTRL, start_offset);

 for (count = 0; count < bytes; count++)
  REG_WRITE(DMCU_IRAM_WR_DATA, src[count]);


 REG_UPDATE_2(DMCU_RAM_ACCESS_CTRL,
   IRAM_HOST_ACCESS_EN, 0,
   IRAM_WR_ADDR_AUTO_INC, 0);

 return 1;
}
