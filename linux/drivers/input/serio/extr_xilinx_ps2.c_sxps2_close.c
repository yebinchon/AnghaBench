
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xps2data {int irq; scalar_t__ base_address; } ;
struct serio {struct xps2data* port_data; } ;


 scalar_t__ XPS2_GIER_OFFSET ;
 scalar_t__ XPS2_IPIER_OFFSET ;
 int free_irq (int ,struct xps2data*) ;
 int out_be32 (scalar_t__,int) ;

__attribute__((used)) static void sxps2_close(struct serio *pserio)
{
 struct xps2data *drvdata = pserio->port_data;


 out_be32(drvdata->base_address + XPS2_GIER_OFFSET, 0x00);
 out_be32(drvdata->base_address + XPS2_IPIER_OFFSET, 0x00);
 free_irq(drvdata->irq, drvdata);
}
