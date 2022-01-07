
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct bma150_data {int dummy; } ;


 int bma150_open (struct bma150_data*) ;
 struct bma150_data* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int bma150_irq_open(struct input_dev *input)
{
 struct bma150_data *bma150 = input_get_drvdata(input);

 return bma150_open(bma150);
}
