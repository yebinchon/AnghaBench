
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm_drvdata {scalar_t__ base; } ;


 scalar_t__ BMVAL (int,int,int) ;
 int CONFIG_64BIT ;
 int IS_ENABLED (int ) ;
 scalar_t__ STMSPFEAT2R ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 stm_fundamental_data_size(struct stm_drvdata *drvdata)
{
 u32 stmspfeat2r;

 if (!IS_ENABLED(CONFIG_64BIT))
  return 4;

 stmspfeat2r = readl_relaxed(drvdata->base + STMSPFEAT2R);






 return BMVAL(stmspfeat2r, 12, 15) ? 8 : 4;
}
