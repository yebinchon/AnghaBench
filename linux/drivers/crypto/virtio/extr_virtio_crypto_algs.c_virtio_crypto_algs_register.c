
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct virtio_crypto {TYPE_1__* vdev; } ;
struct TYPE_7__ {int cra_name; } ;
struct TYPE_6__ {scalar_t__ active_devs; TYPE_3__ algo; int algonum; int service; } ;
struct TYPE_5__ {int dev; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int algs_lock ;
 int crypto_register_alg (TYPE_3__*) ;
 int dev_info (int *,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int virtcrypto_algo_is_supported (struct virtio_crypto*,int ,int ) ;
 TYPE_2__* virtio_crypto_algs ;

int virtio_crypto_algs_register(struct virtio_crypto *vcrypto)
{
 int ret = 0;
 int i = 0;

 mutex_lock(&algs_lock);

 for (i = 0; i < ARRAY_SIZE(virtio_crypto_algs); i++) {

  uint32_t service = virtio_crypto_algs[i].service;
  uint32_t algonum = virtio_crypto_algs[i].algonum;

  if (!virtcrypto_algo_is_supported(vcrypto, service, algonum))
   continue;

  if (virtio_crypto_algs[i].active_devs == 0) {
   ret = crypto_register_alg(&virtio_crypto_algs[i].algo);
   if (ret)
    goto unlock;
  }

  virtio_crypto_algs[i].active_devs++;
  dev_info(&vcrypto->vdev->dev, "Registered algo %s\n",
    virtio_crypto_algs[i].algo.cra_name);
 }

unlock:
 mutex_unlock(&algs_lock);
 return ret;
}
