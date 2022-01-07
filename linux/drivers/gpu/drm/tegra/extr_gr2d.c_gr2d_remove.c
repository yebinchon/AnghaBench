
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int base; } ;
struct gr2d {int clk; TYPE_1__ client; } ;


 int clk_disable_unprepare (int ) ;
 int dev_err (int *,char*,int) ;
 int host1x_client_unregister (int *) ;
 struct gr2d* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int gr2d_remove(struct platform_device *pdev)
{
 struct gr2d *gr2d = platform_get_drvdata(pdev);
 int err;

 err = host1x_client_unregister(&gr2d->client.base);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to unregister host1x client: %d\n",
   err);
  return err;
 }

 clk_disable_unprepare(gr2d->clk);

 return 0;
}
