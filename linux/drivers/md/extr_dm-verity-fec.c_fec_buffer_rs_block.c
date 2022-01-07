
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dm_verity_fec_io {int ** bufs; } ;
struct dm_verity {TYPE_1__* fec; } ;
struct TYPE_2__ {unsigned int rsn; } ;



__attribute__((used)) static inline u8 *fec_buffer_rs_block(struct dm_verity *v,
          struct dm_verity_fec_io *fio,
          unsigned i, unsigned j)
{
 return &fio->bufs[i][j * v->fec->rsn];
}
