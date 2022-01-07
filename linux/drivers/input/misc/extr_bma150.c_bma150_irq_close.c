
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct bma150_data {int dummy; } ;


 int bma150_close (struct bma150_data*) ;
 struct bma150_data* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void bma150_irq_close(struct input_dev *input)
{
 struct bma150_data *bma150 = input_get_drvdata(input);

 bma150_close(bma150);
}
