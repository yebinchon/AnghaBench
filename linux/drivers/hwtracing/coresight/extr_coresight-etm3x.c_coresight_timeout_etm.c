
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etm_drvdata {int dummy; } ;


 int BIT (int) ;
 int EAGAIN ;
 int TIMEOUT_US ;
 int etm_readl (struct etm_drvdata*,int) ;
 int udelay (int) ;

__attribute__((used)) static int coresight_timeout_etm(struct etm_drvdata *drvdata, u32 offset,
      int position, int value)
{
 int i;
 u32 val;

 for (i = TIMEOUT_US; i > 0; i--) {
  val = etm_readl(drvdata, offset);

  if (value) {
   if (val & BIT(position))
    return 0;

  } else {
   if (!(val & BIT(position)))
    return 0;
  }






  if (i - 1)
   udelay(1);
 }

 return -EAGAIN;
}
