
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_function {int dev; } ;
struct f55_data {struct rmi_function* fn; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (int *,struct f55_data*) ;
 struct f55_data* devm_kzalloc (int *,int,int ) ;
 int rmi_f55_detect (struct rmi_function*) ;

__attribute__((used)) static int rmi_f55_probe(struct rmi_function *fn)
{
 struct f55_data *f55;

 f55 = devm_kzalloc(&fn->dev, sizeof(struct f55_data), GFP_KERNEL);
 if (!f55)
  return -ENOMEM;

 f55->fn = fn;
 dev_set_drvdata(&fn->dev, f55);

 return rmi_f55_detect(fn);
}
