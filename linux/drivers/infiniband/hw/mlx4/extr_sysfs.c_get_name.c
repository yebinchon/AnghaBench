
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* persist; } ;
struct TYPE_3__ {int pdev; } ;


 char* pci_name (int ) ;
 int snprintf (char*,int,char*,char*,int,int) ;

__attribute__((used)) static void get_name(struct mlx4_ib_dev *dev, char *name, int i, int max)
{




 snprintf(name, max, "%.8s%.2d.%d", pci_name(dev->dev->persist->pdev),
   i / 8, i % 8);
}
