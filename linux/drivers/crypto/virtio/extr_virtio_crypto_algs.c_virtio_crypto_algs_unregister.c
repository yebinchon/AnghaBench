
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct virtio_crypto {int dummy; } ;
struct TYPE_3__ {int active_devs; int algo; int algonum; int service; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int algs_lock ;
 int crypto_unregister_alg (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int virtcrypto_algo_is_supported (struct virtio_crypto*,int ,int ) ;
 TYPE_1__* virtio_crypto_algs ;

void virtio_crypto_algs_unregister(struct virtio_crypto *vcrypto)
{
 int i = 0;

 mutex_lock(&algs_lock);

 for (i = 0; i < ARRAY_SIZE(virtio_crypto_algs); i++) {

  uint32_t service = virtio_crypto_algs[i].service;
  uint32_t algonum = virtio_crypto_algs[i].algonum;

  if (virtio_crypto_algs[i].active_devs == 0 ||
      !virtcrypto_algo_is_supported(vcrypto, service, algonum))
   continue;

  if (virtio_crypto_algs[i].active_devs == 1)
   crypto_unregister_alg(&virtio_crypto_algs[i].algo);

  virtio_crypto_algs[i].active_devs--;
 }

 mutex_unlock(&algs_lock);
}
