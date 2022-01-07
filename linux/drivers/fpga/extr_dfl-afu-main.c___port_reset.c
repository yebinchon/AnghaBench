
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int __afu_port_disable (struct platform_device*) ;
 int __afu_port_enable (struct platform_device*) ;

__attribute__((used)) static int __port_reset(struct platform_device *pdev)
{
 int ret;

 ret = __afu_port_disable(pdev);
 if (!ret)
  __afu_port_enable(pdev);

 return ret;
}
