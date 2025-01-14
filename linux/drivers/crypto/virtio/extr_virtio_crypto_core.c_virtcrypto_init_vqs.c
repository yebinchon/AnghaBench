
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_crypto {int dummy; } ;


 int get_online_cpus () ;
 int put_online_cpus () ;
 int virtcrypto_alloc_queues (struct virtio_crypto*) ;
 int virtcrypto_find_vqs (struct virtio_crypto*) ;
 int virtcrypto_free_queues (struct virtio_crypto*) ;
 int virtcrypto_set_affinity (struct virtio_crypto*) ;

__attribute__((used)) static int virtcrypto_init_vqs(struct virtio_crypto *vi)
{
 int ret;


 ret = virtcrypto_alloc_queues(vi);
 if (ret)
  goto err;

 ret = virtcrypto_find_vqs(vi);
 if (ret)
  goto err_free;

 get_online_cpus();
 virtcrypto_set_affinity(vi);
 put_online_cpus();

 return 0;

err_free:
 virtcrypto_free_queues(vi);
err:
 return ret;
}
