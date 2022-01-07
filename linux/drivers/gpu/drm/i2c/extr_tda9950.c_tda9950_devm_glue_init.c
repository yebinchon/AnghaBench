
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9950_glue {int (* init ) (int ) ;int data; } ;
struct device {int dummy; } ;


 int devm_add_action (struct device*,int (*) (struct tda9950_glue*),struct tda9950_glue*) ;
 int stub1 (int ) ;
 int tda9950_devm_glue_exit (struct tda9950_glue*) ;

__attribute__((used)) static int tda9950_devm_glue_init(struct device *dev, struct tda9950_glue *glue)
{
 int ret;

 if (glue && glue->init) {
  ret = glue->init(glue->data);
  if (ret)
   return ret;
 }

 ret = devm_add_action(dev, tda9950_devm_glue_exit, glue);
 if (ret)
  tda9950_devm_glue_exit(glue);

 return ret;
}
