
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_drvdata {int dummy; } ;


 int CC_REG (int ) ;
 int HOST_IMR ;
 int cc_iowrite (struct cc_drvdata*,int ,int) ;

void fini_cc_regs(struct cc_drvdata *drvdata)
{

 cc_iowrite(drvdata, CC_REG(HOST_IMR), 0xFFFFFFFF);
}
