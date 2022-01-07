
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfp410_priv {int dummy; } ;
struct intel_dvo_device {struct tfp410_priv* dev_priv; } ;


 int kfree (struct tfp410_priv*) ;

__attribute__((used)) static void tfp410_destroy(struct intel_dvo_device *dvo)
{
 struct tfp410_priv *tfp = dvo->dev_priv;

 if (tfp) {
  kfree(tfp);
  dvo->dev_priv = ((void*)0);
 }
}
