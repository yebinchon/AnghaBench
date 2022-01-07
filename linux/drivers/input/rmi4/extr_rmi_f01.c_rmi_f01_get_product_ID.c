
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_function {int dev; } ;
struct TYPE_2__ {char const* product_id; } ;
struct f01_data {TYPE_1__ properties; } ;


 struct f01_data* dev_get_drvdata (int *) ;

const char *rmi_f01_get_product_ID(struct rmi_function *fn)
{
 struct f01_data *f01 = dev_get_drvdata(&fn->dev);

 return f01->properties.product_id;
}
