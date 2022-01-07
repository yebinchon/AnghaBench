
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mms114_data {int dummy; } ;
struct input_dev {int dummy; } ;


 struct mms114_data* input_get_drvdata (struct input_dev*) ;
 int mms114_stop (struct mms114_data*) ;

__attribute__((used)) static void mms114_input_close(struct input_dev *dev)
{
 struct mms114_data *data = input_get_drvdata(dev);

 mms114_stop(data);
}
