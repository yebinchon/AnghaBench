
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct icc_path {int dummy; } ;


 scalar_t__ IS_ERR (struct icc_path*) ;
 int IS_ERR_OR_NULL (struct icc_path*) ;
 int MBps_to_icc (int) ;
 int PTR_ERR (struct icc_path*) ;
 int dev_warn (int *,char*) ;
 int icc_set_bw (struct icc_path*,int ,int ) ;
 struct icc_path* of_icc_get (int *,char*) ;

__attribute__((used)) static int mdp5_setup_interconnect(struct platform_device *pdev)
{
 struct icc_path *path0 = of_icc_get(&pdev->dev, "mdp0-mem");
 struct icc_path *path1 = of_icc_get(&pdev->dev, "mdp1-mem");
 struct icc_path *path_rot = of_icc_get(&pdev->dev, "rotator-mem");

 if (IS_ERR(path0))
  return PTR_ERR(path0);

 if (!path0) {






  dev_warn(&pdev->dev, "No interconnect support may cause display underflows!\n");
  return 0;
 }

 icc_set_bw(path0, 0, MBps_to_icc(6400));

 if (!IS_ERR_OR_NULL(path1))
  icc_set_bw(path1, 0, MBps_to_icc(6400));
 if (!IS_ERR_OR_NULL(path_rot))
  icc_set_bw(path_rot, 0, MBps_to_icc(6400));

 return 0;
}
