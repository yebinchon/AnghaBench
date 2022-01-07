
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_function {int dev; } ;
struct f34_data {int update_status; } ;


 struct f34_data* dev_get_drvdata (int *) ;

__attribute__((used)) static int rmi_f34_status(struct rmi_function *fn)
{
 struct f34_data *f34 = dev_get_drvdata(&fn->dev);





 return f34->update_status;
}
