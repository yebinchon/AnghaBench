
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmc_drvdata {int memwidth; } ;


 int GENMASK (int,int) ;





u32 tmc_get_memwidth_mask(struct tmc_drvdata *drvdata)
{
 u32 mask = 0;
 switch (drvdata->memwidth) {
 case 129:

 case 128:

 case 131:
  mask = GENMASK(31, 4);
  break;
 case 130:
  mask = GENMASK(31, 5);
  break;
 }

 return mask;
}
