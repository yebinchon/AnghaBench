
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int core_id; } ;
struct komeda_dev {TYPE_1__ chip; } ;


 scalar_t__ MALIDP_CORE_ID_PRODUCT_ID (int ) ;

__attribute__((used)) static inline bool
komeda_product_match(struct komeda_dev *mdev, u32 target)
{
 return MALIDP_CORE_ID_PRODUCT_ID(mdev->chip.core_id) == target;
}
