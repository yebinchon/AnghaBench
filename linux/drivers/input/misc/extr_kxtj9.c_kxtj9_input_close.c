
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxtj9_data {int dummy; } ;
struct input_dev {int dummy; } ;


 struct kxtj9_data* input_get_drvdata (struct input_dev*) ;
 int kxtj9_disable (struct kxtj9_data*) ;

__attribute__((used)) static void kxtj9_input_close(struct input_dev *dev)
{
 struct kxtj9_data *tj9 = input_get_drvdata(dev);

 kxtj9_disable(tj9);
}
