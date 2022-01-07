
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct aead_alg {int dummy; } ;
struct TYPE_4__ {TYPE_1__* viodev; } ;
struct TYPE_3__ {int dev; } ;


 int crypto_register_aead (struct aead_alg*) ;
 scalar_t__ nx_check_props (int *,int ,int ) ;
 TYPE_2__ nx_driver ;

__attribute__((used)) static int nx_register_aead(struct aead_alg *alg, u32 fc, u32 mode)
{
 return nx_check_props(&nx_driver.viodev->dev, fc, mode) ?
        crypto_register_aead(alg) : 0;
}
