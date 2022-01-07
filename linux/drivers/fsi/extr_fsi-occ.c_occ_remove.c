
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct occ {int idx; int mdev; } ;


 int device_for_each_child (int *,int *,int ) ;
 int ida_simple_remove (int *,int ) ;
 int misc_deregister (int *) ;
 int occ_ida ;
 int occ_unregister_child ;
 struct occ* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int occ_remove(struct platform_device *pdev)
{
 struct occ *occ = platform_get_drvdata(pdev);

 misc_deregister(&occ->mdev);

 device_for_each_child(&pdev->dev, ((void*)0), occ_unregister_child);

 ida_simple_remove(&occ_ida, occ->idx);

 return 0;
}
