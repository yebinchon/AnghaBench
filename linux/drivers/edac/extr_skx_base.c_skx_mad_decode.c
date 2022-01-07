
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct skx_dimm {unsigned int rowbits; unsigned int colbits; int bank_xor_enable; scalar_t__ fine_grain_bank; scalar_t__ close_pg; } ;
struct decoded_addr {size_t imc; size_t channel; size_t dimm; unsigned int row; int column; void* bank_group; void* bank_address; int addr; int rank_address; TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__* imc; } ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct TYPE_4__ {struct skx_dimm* dimms; } ;


 int edac_dbg (int,char*,int ,unsigned int,int,void*,void*) ;
 void* skx_bank_bits (int ,int,int,int ,int,int) ;
 void* skx_bits (int ,unsigned int,int ) ;
 int skx_close_column ;
 int skx_close_row ;
 int skx_open_column ;
 int skx_open_fine_column ;
 int skx_open_row ;

__attribute__((used)) static bool skx_mad_decode(struct decoded_addr *r)
{
 struct skx_dimm *dimm = &r->dev->imc[r->imc].chan[r->channel].dimms[r->dimm];
 int bg0 = dimm->fine_grain_bank ? 6 : 13;

 if (dimm->close_pg) {
  r->row = skx_bits(r->rank_address, dimm->rowbits, skx_close_row);
  r->column = skx_bits(r->rank_address, dimm->colbits, skx_close_column);
  r->column |= 0x400;
  r->bank_address = skx_bank_bits(r->rank_address, 8, 9, dimm->bank_xor_enable, 22, 28);
  r->bank_group = skx_bank_bits(r->rank_address, 6, 7, dimm->bank_xor_enable, 20, 21);
 } else {
  r->row = skx_bits(r->rank_address, dimm->rowbits, skx_open_row);
  if (dimm->fine_grain_bank)
   r->column = skx_bits(r->rank_address, dimm->colbits, skx_open_fine_column);
  else
   r->column = skx_bits(r->rank_address, dimm->colbits, skx_open_column);
  r->bank_address = skx_bank_bits(r->rank_address, 18, 19, dimm->bank_xor_enable, 22, 23);
  r->bank_group = skx_bank_bits(r->rank_address, bg0, 17, dimm->bank_xor_enable, 20, 21);
 }
 r->row &= (1u << dimm->rowbits) - 1;

 edac_dbg(2, "0x%llx: row=0x%x col=0x%x bank_addr=%d bank_group=%d\n",
   r->addr, r->row, r->column, r->bank_address,
   r->bank_group);
 return 1;
}
