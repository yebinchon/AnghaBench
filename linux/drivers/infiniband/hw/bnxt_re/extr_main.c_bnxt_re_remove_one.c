
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_re_dev {TYPE_1__* en_dev; } ;
struct TYPE_2__ {int pdev; } ;


 int pci_dev_put (int ) ;

__attribute__((used)) static void bnxt_re_remove_one(struct bnxt_re_dev *rdev)
{
 pci_dev_put(rdev->en_dev->pdev);
}
