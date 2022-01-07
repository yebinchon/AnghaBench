
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srpt_send_ioctx {int dummy; } ;
struct srpt_recv_ioctx {int dummy; } ;
struct srpt_ioctx {int index; int offset; } ;
struct srpt_device {int dummy; } ;
struct kmem_cache {int dummy; } ;
typedef int ring ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int kvfree (struct srpt_ioctx**) ;
 struct srpt_ioctx** kvmalloc_array (int,int,int ) ;
 struct srpt_ioctx* srpt_alloc_ioctx (struct srpt_device*,int,struct kmem_cache*,int) ;
 int srpt_free_ioctx (struct srpt_device*,struct srpt_ioctx*,struct kmem_cache*,int) ;

__attribute__((used)) static struct srpt_ioctx **srpt_alloc_ioctx_ring(struct srpt_device *sdev,
    int ring_size, int ioctx_size,
    struct kmem_cache *buf_cache,
    int alignment_offset,
    enum dma_data_direction dir)
{
 struct srpt_ioctx **ring;
 int i;

 WARN_ON(ioctx_size != sizeof(struct srpt_recv_ioctx) &&
  ioctx_size != sizeof(struct srpt_send_ioctx));

 ring = kvmalloc_array(ring_size, sizeof(ring[0]), GFP_KERNEL);
 if (!ring)
  goto out;
 for (i = 0; i < ring_size; ++i) {
  ring[i] = srpt_alloc_ioctx(sdev, ioctx_size, buf_cache, dir);
  if (!ring[i])
   goto err;
  ring[i]->index = i;
  ring[i]->offset = alignment_offset;
 }
 goto out;

err:
 while (--i >= 0)
  srpt_free_ioctx(sdev, ring[i], buf_cache, dir);
 kvfree(ring);
 ring = ((void*)0);
out:
 return ring;
}
