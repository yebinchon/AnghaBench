
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hash_device_data {int dummy; } ;
struct TYPE_3__ {int hash; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int crypto_unregister_ahash (int *) ;
 TYPE_1__* hash_algs ;

__attribute__((used)) static void ahash_algs_unregister_all(struct hash_device_data *device_data)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(hash_algs); i++)
  crypto_unregister_ahash(&hash_algs[i].hash);
}
