
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity_io {int dummy; } ;
struct dm_verity {int dummy; } ;
struct ahash_request {int dummy; } ;



__attribute__((used)) static inline struct ahash_request *verity_io_hash_req(struct dm_verity *v,
           struct dm_verity_io *io)
{
 return (struct ahash_request *)(io + 1);
}
