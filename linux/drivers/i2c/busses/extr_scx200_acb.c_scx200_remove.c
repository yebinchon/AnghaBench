
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scx200_acb_iface {int dummy; } ;
struct platform_device {int dummy; } ;


 struct scx200_acb_iface* platform_get_drvdata (struct platform_device*) ;
 int scx200_cleanup_iface (struct scx200_acb_iface*) ;

__attribute__((used)) static int scx200_remove(struct platform_device *pdev)
{
 struct scx200_acb_iface *iface;

 iface = platform_get_drvdata(pdev);
 scx200_cleanup_iface(iface);

 return 0;
}
