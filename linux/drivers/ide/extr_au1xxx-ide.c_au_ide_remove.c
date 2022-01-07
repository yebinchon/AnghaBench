
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct ide_host {int dummy; } ;
struct TYPE_3__ {scalar_t__ regbase; } ;
typedef TYPE_1__ _auide_hwif ;


 int IORESOURCE_MEM ;
 TYPE_1__ auide_hwif ;
 int ide_host_remove (struct ide_host*) ;
 int iounmap (void*) ;
 struct ide_host* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int au_ide_remove(struct platform_device *dev)
{
 struct resource *res;
 struct ide_host *host = platform_get_drvdata(dev);
 _auide_hwif *ahwif = &auide_hwif;

 ide_host_remove(host);

 iounmap((void *)ahwif->regbase);

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, resource_size(res));

 return 0;
}
