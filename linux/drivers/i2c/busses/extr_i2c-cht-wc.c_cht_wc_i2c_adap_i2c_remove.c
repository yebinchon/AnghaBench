
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cht_wc_i2c_adap {int irq_domain; int adapter; int client; } ;


 int i2c_del_adapter (int *) ;
 int i2c_unregister_device (int ) ;
 int irq_domain_remove (int ) ;
 struct cht_wc_i2c_adap* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cht_wc_i2c_adap_i2c_remove(struct platform_device *pdev)
{
 struct cht_wc_i2c_adap *adap = platform_get_drvdata(pdev);

 i2c_unregister_device(adap->client);
 i2c_del_adapter(&adap->adapter);
 irq_domain_remove(adap->irq_domain);

 return 0;
}
