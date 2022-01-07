
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_hwseq {int dummy; } ;


 int DOMAIN0_PG_CONFIG ;
 int DOMAIN0_POWER_FORCEON ;
 int DOMAIN1_PG_CONFIG ;
 int DOMAIN1_POWER_FORCEON ;
 int DOMAIN2_PG_CONFIG ;
 int DOMAIN2_POWER_FORCEON ;
 int DOMAIN3_PG_CONFIG ;
 int DOMAIN3_POWER_FORCEON ;
 int DOMAIN4_PG_CONFIG ;
 int DOMAIN4_POWER_FORCEON ;
 int DOMAIN5_PG_CONFIG ;
 int DOMAIN5_POWER_FORCEON ;
 int DOMAIN6_PG_CONFIG ;
 int DOMAIN6_POWER_FORCEON ;
 int DOMAIN7_PG_CONFIG ;
 int DOMAIN7_POWER_FORCEON ;
 int REG_UPDATE (int ,int ,int) ;

__attribute__((used)) static void dcn10_enable_power_gating_plane(
 struct dce_hwseq *hws,
 bool enable)
{
 bool force_on = 1;

 if (enable)
  force_on = 0;


 REG_UPDATE(DOMAIN0_PG_CONFIG, DOMAIN0_POWER_FORCEON, force_on);
 REG_UPDATE(DOMAIN2_PG_CONFIG, DOMAIN2_POWER_FORCEON, force_on);
 REG_UPDATE(DOMAIN4_PG_CONFIG, DOMAIN4_POWER_FORCEON, force_on);
 REG_UPDATE(DOMAIN6_PG_CONFIG, DOMAIN6_POWER_FORCEON, force_on);


 REG_UPDATE(DOMAIN1_PG_CONFIG, DOMAIN1_POWER_FORCEON, force_on);
 REG_UPDATE(DOMAIN3_PG_CONFIG, DOMAIN3_POWER_FORCEON, force_on);
 REG_UPDATE(DOMAIN5_PG_CONFIG, DOMAIN5_POWER_FORCEON, force_on);
 REG_UPDATE(DOMAIN7_PG_CONFIG, DOMAIN7_POWER_FORCEON, force_on);
}
