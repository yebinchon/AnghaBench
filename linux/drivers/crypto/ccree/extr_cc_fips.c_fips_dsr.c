
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc_drvdata {int irq; } ;


 int CC_GPR0_IRQ_MASK ;
 int CC_REG (int ) ;
 int HOST_IMR ;
 int cc_iowrite (struct cc_drvdata*,int,int) ;
 int cc_tee_handle_fips_error (struct cc_drvdata*) ;

__attribute__((used)) static void fips_dsr(unsigned long devarg)
{
 struct cc_drvdata *drvdata = (struct cc_drvdata *)devarg;
 u32 irq, val;

 irq = (drvdata->irq & (CC_GPR0_IRQ_MASK));

 if (irq) {
  cc_tee_handle_fips_error(drvdata);
 }




 val = (CC_REG(HOST_IMR) & ~irq);
 cc_iowrite(drvdata, CC_REG(HOST_IMR), val);
}
