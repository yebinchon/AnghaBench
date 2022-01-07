
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct n2_mau {int mau_list; } ;


 struct n2_mau* dev_get_drvdata (int *) ;
 int free_ncp (struct n2_mau*) ;
 int release_global_resources () ;
 int spu_list_destroy (int *) ;

__attribute__((used)) static int n2_mau_remove(struct platform_device *dev)
{
 struct n2_mau *mp = dev_get_drvdata(&dev->dev);

 spu_list_destroy(&mp->mau_list);

 release_global_resources();

 free_ncp(mp);

 return 0;
}
