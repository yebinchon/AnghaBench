
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u8 ;
struct dm_verity_fec_io {int erasures; int rs; } ;
struct dm_verity {TYPE_1__* fec; } ;
struct TYPE_2__ {int roots; int rsn; } ;


 int DM_VERITY_FEC_MIN_RSN ;
 int DM_VERITY_FEC_RSM ;
 int decode_rs8 (int ,int *,int *,int ,int *,int,int ,int ,int *) ;

__attribute__((used)) static int fec_decode_rs8(struct dm_verity *v, struct dm_verity_fec_io *fio,
     u8 *data, u8 *fec, int neras)
{
 int i;
 uint16_t par[DM_VERITY_FEC_RSM - DM_VERITY_FEC_MIN_RSN];

 for (i = 0; i < v->fec->roots; i++)
  par[i] = fec[i];

 return decode_rs8(fio->rs, data, par, v->fec->rsn, ((void*)0), neras,
     fio->erasures, 0, ((void*)0));
}
