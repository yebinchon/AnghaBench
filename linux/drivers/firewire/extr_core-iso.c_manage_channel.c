
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct fw_card {int dummy; } ;
typedef int __be32 ;


 int EAGAIN ;
 int EBUSY ;
 int EIO ;


 int SCODE_100 ;
 int TCODE_LOCK_COMPARE_SWAP ;
 int cpu_to_be32 (int) ;
 int fw_run_transaction (struct fw_card*,int ,int,int,int ,int ,int*,int) ;

__attribute__((used)) static int manage_channel(struct fw_card *card, int irm_id, int generation,
  u32 channels_mask, u64 offset, bool allocate)
{
 __be32 bit, all, old;
 __be32 data[2];
 int channel, ret = -EIO, retry = 5;

 old = all = allocate ? cpu_to_be32(~0) : 0;

 for (channel = 0; channel < 32; channel++) {
  if (!(channels_mask & 1 << channel))
   continue;

  ret = -EBUSY;

  bit = cpu_to_be32(1 << (31 - channel));
  if ((old & bit) != (all & bit))
   continue;

  data[0] = old;
  data[1] = old ^ bit;
  switch (fw_run_transaction(card, TCODE_LOCK_COMPARE_SWAP,
        irm_id, generation, SCODE_100,
        offset, data, 8)) {
  case 128:

   return allocate ? -EAGAIN : channel;

  case 129:
   if (data[0] == old)
    return channel;

   old = data[0];


   if ((data[0] & bit) == (data[1] & bit))
    continue;


  default:
   if (retry) {
    retry--;
    channel--;
   } else {
    ret = -EIO;
   }
  }
 }

 return ret;
}
