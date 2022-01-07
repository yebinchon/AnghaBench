
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe_touch {int stmpe; } ;
struct platform_device {int dummy; } ;


 int STMPE_BLOCK_TOUCHSCREEN ;
 struct stmpe_touch* platform_get_drvdata (struct platform_device*) ;
 int stmpe_disable (int ,int ) ;

__attribute__((used)) static int stmpe_ts_remove(struct platform_device *pdev)
{
 struct stmpe_touch *ts = platform_get_drvdata(pdev);

 stmpe_disable(ts->stmpe, STMPE_BLOCK_TOUCHSCREEN);

 return 0;
}
