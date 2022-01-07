
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efa_dev {int edev; } ;
struct efa_com_destroy_ah_params {int pdn; int ah; } ;
struct TYPE_3__ {int pd; } ;
struct efa_ah {TYPE_1__ ibah; int ah; } ;
struct TYPE_4__ {int pdn; } ;


 int efa_com_destroy_ah (int *,struct efa_com_destroy_ah_params*) ;
 TYPE_2__* to_epd (int ) ;

__attribute__((used)) static int efa_ah_destroy(struct efa_dev *dev, struct efa_ah *ah)
{
 struct efa_com_destroy_ah_params params = {
  .ah = ah->ah,
  .pdn = to_epd(ah->ibah.pd)->pdn,
 };

 return efa_com_destroy_ah(&dev->edev, &params);
}
