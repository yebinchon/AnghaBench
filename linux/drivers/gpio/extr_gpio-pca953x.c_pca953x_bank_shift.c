
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ngpio; } ;
struct pca953x_chip {TYPE_1__ gpio_chip; } ;


 int BANK_SZ ;
 int fls (int) ;

__attribute__((used)) static int pca953x_bank_shift(struct pca953x_chip *chip)
{
 return fls((chip->gpio_chip.ngpio - 1) / BANK_SZ);
}
