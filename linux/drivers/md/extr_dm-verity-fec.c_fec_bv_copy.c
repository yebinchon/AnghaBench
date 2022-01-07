
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dm_verity_io {int dummy; } ;
struct dm_verity_fec_io {size_t output_pos; int * output; } ;
struct dm_verity {int dummy; } ;


 struct dm_verity_fec_io* fec_io (struct dm_verity_io*) ;
 int memcpy (int *,int *,size_t) ;

__attribute__((used)) static int fec_bv_copy(struct dm_verity *v, struct dm_verity_io *io, u8 *data,
         size_t len)
{
 struct dm_verity_fec_io *fio = fec_io(io);

 memcpy(data, &fio->output[fio->output_pos], len);
 fio->output_pos += len;

 return 0;
}
