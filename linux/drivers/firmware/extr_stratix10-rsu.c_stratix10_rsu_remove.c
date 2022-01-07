
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stratix10_rsu_priv {int chan; } ;
struct platform_device {int dummy; } ;


 struct stratix10_rsu_priv* platform_get_drvdata (struct platform_device*) ;
 int stratix10_svc_free_channel (int ) ;

__attribute__((used)) static int stratix10_rsu_remove(struct platform_device *pdev)
{
 struct stratix10_rsu_priv *priv = platform_get_drvdata(pdev);

 stratix10_svc_free_channel(priv->chan);
 return 0;
}
