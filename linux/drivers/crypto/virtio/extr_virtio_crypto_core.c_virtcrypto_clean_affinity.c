
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_crypto {int affinity_hint_set; int max_data_queues; TYPE_1__* data_vq; } ;
struct TYPE_2__ {int vq; } ;


 int virtqueue_set_affinity (int ,int *) ;

__attribute__((used)) static void virtcrypto_clean_affinity(struct virtio_crypto *vi, long hcpu)
{
 int i;

 if (vi->affinity_hint_set) {
  for (i = 0; i < vi->max_data_queues; i++)
   virtqueue_set_affinity(vi->data_vq[i].vq, ((void*)0));

  vi->affinity_hint_set = 0;
 }
}
