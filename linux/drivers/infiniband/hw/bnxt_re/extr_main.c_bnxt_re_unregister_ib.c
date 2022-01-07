
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_re_dev {int ibdev; } ;


 int ib_unregister_device (int *) ;

__attribute__((used)) static void bnxt_re_unregister_ib(struct bnxt_re_dev *rdev)
{
 ib_unregister_device(&rdev->ibdev);
}
