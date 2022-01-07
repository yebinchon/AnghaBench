
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxtj9_data {int dummy; } ;
struct input_dev {int dummy; } ;


 struct kxtj9_data* input_get_drvdata (struct input_dev*) ;
 int kxtj9_enable (struct kxtj9_data*) ;

__attribute__((used)) static int kxtj9_input_open(struct input_dev *input)
{
 struct kxtj9_data *tj9 = input_get_drvdata(input);

 return kxtj9_enable(tj9);
}
