
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dm_verity_io {int dummy; } ;
struct dm_verity {int dummy; } ;
struct bvec_iter {int dummy; } ;
typedef int sector_t ;
typedef enum verity_block_type { ____Placeholder_verity_block_type } verity_block_type ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int verity_fec_decode(struct dm_verity *v,
        struct dm_verity_io *io,
        enum verity_block_type type,
        sector_t block, u8 *dest,
        struct bvec_iter *iter)
{
 return -EOPNOTSUPP;
}
