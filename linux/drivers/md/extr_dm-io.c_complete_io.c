
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io {unsigned long error_bits; TYPE_1__* client; scalar_t__ vma_invalidate_size; int vma_invalidate_address; void* context; int (* callback ) (unsigned long,void*) ;} ;
typedef int (* io_notify_fn ) (unsigned long,void*) ;
struct TYPE_2__ {int pool; } ;


 int invalidate_kernel_vmap_range (int ,scalar_t__) ;
 int mempool_free (struct io*,int *) ;

__attribute__((used)) static void complete_io(struct io *io)
{
 unsigned long error_bits = io->error_bits;
 io_notify_fn fn = io->callback;
 void *context = io->context;

 if (io->vma_invalidate_size)
  invalidate_kernel_vmap_range(io->vma_invalidate_address,
          io->vma_invalidate_size);

 mempool_free(io, &io->client->pool);
 fn(error_bits, context);
}
