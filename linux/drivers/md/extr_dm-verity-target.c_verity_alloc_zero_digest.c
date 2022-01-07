
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;
typedef struct ahash_request u8 ;
struct dm_verity {int data_dev_block_bits; void* zero_digest; int ahash_reqsize; int digest_size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct ahash_request*) ;
 void* kmalloc (int ,int ) ;
 struct ahash_request* kzalloc (int,int ) ;
 int verity_hash (struct dm_verity*,struct ahash_request*,struct ahash_request*,int,void*) ;

__attribute__((used)) static int verity_alloc_zero_digest(struct dm_verity *v)
{
 int r = -ENOMEM;
 struct ahash_request *req;
 u8 *zero_data;

 v->zero_digest = kmalloc(v->digest_size, GFP_KERNEL);

 if (!v->zero_digest)
  return r;

 req = kmalloc(v->ahash_reqsize, GFP_KERNEL);

 if (!req)
  return r;

 zero_data = kzalloc(1 << v->data_dev_block_bits, GFP_KERNEL);

 if (!zero_data)
  goto out;

 r = verity_hash(v, req, zero_data, 1 << v->data_dev_block_bits,
   v->zero_digest);

out:
 kfree(req);
 kfree(zero_data);

 return r;
}
