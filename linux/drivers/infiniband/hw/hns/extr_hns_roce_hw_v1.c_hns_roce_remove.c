
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct hns_roce_dev {int ib_dev; int priv; } ;


 int hns_roce_exit (struct hns_roce_dev*) ;
 int ib_dealloc_device (int *) ;
 int kfree (int ) ;
 struct hns_roce_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int hns_roce_remove(struct platform_device *pdev)
{
 struct hns_roce_dev *hr_dev = platform_get_drvdata(pdev);

 hns_roce_exit(hr_dev);
 kfree(hr_dev->priv);
 ib_dealloc_device(&hr_dev->ib_dev);

 return 0;
}
