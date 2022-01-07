
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_dmac {int dummy; } ;
struct platform_device {int dummy; } ;


 struct rcar_dmac* platform_get_drvdata (struct platform_device*) ;
 int rcar_dmac_stop_all_chan (struct rcar_dmac*) ;

__attribute__((used)) static void rcar_dmac_shutdown(struct platform_device *pdev)
{
 struct rcar_dmac *dmac = platform_get_drvdata(pdev);

 rcar_dmac_stop_all_chan(dmac);
}
