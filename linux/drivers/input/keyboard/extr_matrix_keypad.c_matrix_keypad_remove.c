
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct matrix_keypad {int input_dev; } ;


 int input_unregister_device (int ) ;
 int kfree (struct matrix_keypad*) ;
 int matrix_keypad_free_gpio (struct matrix_keypad*) ;
 struct matrix_keypad* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int matrix_keypad_remove(struct platform_device *pdev)
{
 struct matrix_keypad *keypad = platform_get_drvdata(pdev);

 matrix_keypad_free_gpio(keypad);
 input_unregister_device(keypad->input_dev);
 kfree(keypad);

 return 0;
}
