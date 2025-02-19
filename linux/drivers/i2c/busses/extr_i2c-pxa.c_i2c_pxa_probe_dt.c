
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr; } ;
struct pxa_i2c {int use_pio; int fast_mode; TYPE_1__ adap; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
typedef enum pxa_i2c_types { ____Placeholder_pxa_i2c_types } pxa_i2c_types ;


 int i2c_pxa_dt_ids ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;

__attribute__((used)) static int i2c_pxa_probe_dt(struct platform_device *pdev, struct pxa_i2c *i2c,
       enum pxa_i2c_types *i2c_types)
{
 struct device_node *np = pdev->dev.of_node;
 const struct of_device_id *of_id =
   of_match_device(i2c_pxa_dt_ids, &pdev->dev);

 if (!of_id)
  return 1;


 i2c->adap.nr = -1;

 if (of_get_property(np, "mrvl,i2c-polling", ((void*)0)))
  i2c->use_pio = 1;
 if (of_get_property(np, "mrvl,i2c-fast-mode", ((void*)0)))
  i2c->fast_mode = 1;

 *i2c_types = (enum pxa_i2c_types)(of_id->data);

 return 0;
}
