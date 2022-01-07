
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpages {unsigned long vma_invalidate_size; int * vma_invalidate_address; } ;
struct TYPE_3__ {int addr; int * vma; int bio; int pl; } ;
struct TYPE_4__ {int type; TYPE_1__ ptr; int offset; } ;
struct dm_io_request {TYPE_2__ mem; int bi_op; } ;






 int EINVAL ;
 int REQ_OP_READ ;
 int bio_dp_init (struct dpages*,int ) ;
 int flush_kernel_vmap_range (int *,unsigned long) ;
 int km_dp_init (struct dpages*,int ) ;
 int list_dp_init (struct dpages*,int ,int ) ;
 int vm_dp_init (struct dpages*,int *) ;

__attribute__((used)) static int dp_init(struct dm_io_request *io_req, struct dpages *dp,
     unsigned long size)
{


 dp->vma_invalidate_address = ((void*)0);
 dp->vma_invalidate_size = 0;

 switch (io_req->mem.type) {
 case 129:
  list_dp_init(dp, io_req->mem.ptr.pl, io_req->mem.offset);
  break;

 case 131:
  bio_dp_init(dp, io_req->mem.ptr.bio);
  break;

 case 128:
  flush_kernel_vmap_range(io_req->mem.ptr.vma, size);
  if (io_req->bi_op == REQ_OP_READ) {
   dp->vma_invalidate_address = io_req->mem.ptr.vma;
   dp->vma_invalidate_size = size;
  }
  vm_dp_init(dp, io_req->mem.ptr.vma);
  break;

 case 130:
  km_dp_init(dp, io_req->mem.ptr.addr);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
