
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_keyscan {int dummy; } ;
struct input_dev {int dummy; } ;


 struct st_keyscan* input_get_drvdata (struct input_dev*) ;
 int keyscan_stop (struct st_keyscan*) ;

__attribute__((used)) static void keyscan_close(struct input_dev *dev)
{
 struct st_keyscan *keypad = input_get_drvdata(dev);

 keyscan_stop(keypad);
}
