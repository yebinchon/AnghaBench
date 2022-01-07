
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe_keypad {int stmpe; } ;
struct platform_device {int dummy; } ;


 int STMPE_BLOCK_KEYPAD ;
 struct stmpe_keypad* platform_get_drvdata (struct platform_device*) ;
 int stmpe_disable (int ,int ) ;

__attribute__((used)) static int stmpe_keypad_remove(struct platform_device *pdev)
{
 struct stmpe_keypad *keypad = platform_get_drvdata(pdev);

 stmpe_disable(keypad->stmpe, STMPE_BLOCK_KEYPAD);

 return 0;
}
