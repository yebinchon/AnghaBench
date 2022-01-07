
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s10_priv {int chan; } ;
struct platform_device {int dummy; } ;
struct fpga_manager {struct s10_priv* priv; } ;


 int fpga_mgr_unregister (struct fpga_manager*) ;
 struct fpga_manager* platform_get_drvdata (struct platform_device*) ;
 int stratix10_svc_free_channel (int ) ;

__attribute__((used)) static int s10_remove(struct platform_device *pdev)
{
 struct fpga_manager *mgr = platform_get_drvdata(pdev);
 struct s10_priv *priv = mgr->priv;

 fpga_mgr_unregister(mgr);
 stratix10_svc_free_channel(priv->chan);

 return 0;
}
