
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct virtio_crypto {size_t max_data_queues; TYPE_1__* data_vq; } ;
struct TYPE_2__ {scalar_t__ engine; } ;


 int crypto_engine_exit (scalar_t__) ;

__attribute__((used)) static void virtcrypto_clear_crypto_engines(struct virtio_crypto *vcrypto)
{
 u32 i;

 for (i = 0; i < vcrypto->max_data_queues; i++)
  if (vcrypto->data_vq[i].engine)
   crypto_engine_exit(vcrypto->data_vq[i].engine);
}
