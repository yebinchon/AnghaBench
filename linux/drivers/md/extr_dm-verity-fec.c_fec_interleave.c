
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct dm_verity {int data_dev_block_bits; TYPE_1__* fec; } ;
struct TYPE_2__ {int rounds; int rsn; } ;


 int do_div (scalar_t__,int ) ;

__attribute__((used)) static inline u64 fec_interleave(struct dm_verity *v, u64 offset)
{
 u32 mod;

 mod = do_div(offset, v->fec->rsn);
 return offset + mod * (v->fec->rounds << v->data_dev_block_bits);
}
