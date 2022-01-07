
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dm_verity_io {int dummy; } ;
struct dm_verity {int ahash_reqsize; } ;



__attribute__((used)) static inline u8 *verity_io_real_digest(struct dm_verity *v,
     struct dm_verity_io *io)
{
 return (u8 *)(io + 1) + v->ahash_reqsize;
}
