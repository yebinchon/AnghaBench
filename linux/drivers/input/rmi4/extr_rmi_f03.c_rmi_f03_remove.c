
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_function {int dev; } ;
struct f03_data {int serio; scalar_t__ serio_registered; } ;


 struct f03_data* dev_get_drvdata (int *) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static void rmi_f03_remove(struct rmi_function *fn)
{
 struct f03_data *f03 = dev_get_drvdata(&fn->dev);

 if (f03->serio_registered)
  serio_unregister_port(f03->serio);
}
