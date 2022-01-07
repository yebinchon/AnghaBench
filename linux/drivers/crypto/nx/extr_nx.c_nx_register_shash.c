
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct shash_alg {int dummy; } ;
struct TYPE_4__ {TYPE_1__* viodev; } ;
struct TYPE_3__ {int dev; } ;


 int crypto_register_shash (struct shash_alg*) ;
 scalar_t__ nx_check_prop (int *,int ,int ,int) ;
 scalar_t__ nx_check_props (int *,int ,int ) ;
 TYPE_2__ nx_driver ;

__attribute__((used)) static int nx_register_shash(struct shash_alg *alg, u32 fc, u32 mode, int slot)
{
 return (slot >= 0 ? nx_check_prop(&nx_driver.viodev->dev,
       fc, mode, slot) :
       nx_check_props(&nx_driver.viodev->dev, fc, mode)) ?
        crypto_register_shash(alg) : 0;
}
