
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dfl_feature {int dummy; } ;


 int port_reset (struct platform_device*) ;

__attribute__((used)) static int port_hdr_init(struct platform_device *pdev,
    struct dfl_feature *feature)
{
 port_reset(pdev);

 return 0;
}
