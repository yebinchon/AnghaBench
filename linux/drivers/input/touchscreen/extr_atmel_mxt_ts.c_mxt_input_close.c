
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_data {int dummy; } ;
struct input_dev {int dummy; } ;


 struct mxt_data* input_get_drvdata (struct input_dev*) ;
 int mxt_stop (struct mxt_data*) ;

__attribute__((used)) static void mxt_input_close(struct input_dev *dev)
{
 struct mxt_data *data = input_get_drvdata(dev);

 mxt_stop(data);
}
