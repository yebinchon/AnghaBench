
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_device {int dev; } ;


 int __ipoctal_remove (int ) ;
 int dev_get_drvdata (int *) ;

__attribute__((used)) static void ipoctal_remove(struct ipack_device *idev)
{
 __ipoctal_remove(dev_get_drvdata(&idev->dev));
}
