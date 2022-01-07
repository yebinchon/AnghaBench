
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmcu {int dummy; } ;
struct dce_dmcu {int dummy; } ;


 int DMCU_STATUS ;
 int REG_GET (int ,int ,unsigned int*) ;
 struct dce_dmcu* TO_DCE_DMCU (struct dmcu*) ;
 int UC_IN_RESET ;

__attribute__((used)) static bool dce_is_dmcu_initialized(struct dmcu *dmcu)
{
 struct dce_dmcu *dmcu_dce = TO_DCE_DMCU(dmcu);
 unsigned int dmcu_uc_reset;


 REG_GET(DMCU_STATUS, UC_IN_RESET, &dmcu_uc_reset);


 if (dmcu_uc_reset)
  return 0;

 return 1;
}
