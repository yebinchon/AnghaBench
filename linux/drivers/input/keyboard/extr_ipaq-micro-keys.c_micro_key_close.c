
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipaq_micro_keys {int dummy; } ;
struct input_dev {int dummy; } ;


 struct ipaq_micro_keys* input_get_drvdata (struct input_dev*) ;
 int micro_key_stop (struct ipaq_micro_keys*) ;

__attribute__((used)) static void micro_key_close(struct input_dev *input)
{
 struct ipaq_micro_keys *keys = input_get_drvdata(input);

 micro_key_stop(keys);
}
