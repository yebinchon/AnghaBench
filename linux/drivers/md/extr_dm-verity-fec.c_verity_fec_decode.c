
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct dm_verity_io {int dummy; } ;
struct dm_verity_fec_io {scalar_t__ level; scalar_t__ output_pos; int output; } ;
struct dm_verity {int data_dev_block_bits; TYPE_2__* fec; scalar_t__ data_blocks; TYPE_1__* data_dev; } ;
struct bvec_iter {int dummy; } ;
typedef int sector_t ;
typedef enum verity_block_type { ____Placeholder_verity_block_type } verity_block_type ;
struct TYPE_4__ {int rounds; } ;
struct TYPE_3__ {int name; } ;


 int DMWARN_LIMIT (char*,int ) ;
 int DM_VERITY_BLOCK_TYPE_METADATA ;
 scalar_t__ DM_VERITY_FEC_MAX_RECURSION ;
 int EIO ;
 int EOPNOTSUPP ;
 int div64_u64 (int,int) ;
 int fec_bv_copy ;
 int fec_decode_rsb (struct dm_verity*,struct dm_verity_io*,struct dm_verity_fec_io*,int,int,int) ;
 struct dm_verity_fec_io* fec_io (struct dm_verity_io*) ;
 int memcpy (int *,int ,int) ;
 int verity_fec_is_enabled (struct dm_verity*) ;
 int verity_for_bv_block (struct dm_verity*,struct dm_verity_io*,struct bvec_iter*,int ) ;

int verity_fec_decode(struct dm_verity *v, struct dm_verity_io *io,
        enum verity_block_type type, sector_t block, u8 *dest,
        struct bvec_iter *iter)
{
 int r;
 struct dm_verity_fec_io *fio = fec_io(io);
 u64 offset, res, rsb;

 if (!verity_fec_is_enabled(v))
  return -EOPNOTSUPP;

 if (fio->level >= DM_VERITY_FEC_MAX_RECURSION) {
  DMWARN_LIMIT("%s: FEC: recursion too deep", v->data_dev->name);
  return -EIO;
 }

 fio->level++;

 if (type == DM_VERITY_BLOCK_TYPE_METADATA)
  block += v->data_blocks;
 offset = block << v->data_dev_block_bits;
 res = div64_u64(offset, v->fec->rounds << v->data_dev_block_bits);





 rsb = offset - res * (v->fec->rounds << v->data_dev_block_bits);






 r = fec_decode_rsb(v, io, fio, rsb, offset, 0);
 if (r < 0) {
  r = fec_decode_rsb(v, io, fio, rsb, offset, 1);
  if (r < 0)
   goto done;
 }

 if (dest)
  memcpy(dest, fio->output, 1 << v->data_dev_block_bits);
 else if (iter) {
  fio->output_pos = 0;
  r = verity_for_bv_block(v, io, iter, fec_bv_copy);
 }

done:
 fio->level--;
 return r;
}
