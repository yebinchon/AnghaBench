
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sec_dev_info {scalar_t__* regs; int dev; } ;


 int EINVAL ;
 int SEC_HASH_IPV4_MASK ;
 scalar_t__ SEC_IPV4_MASK_TABLE_REG ;
 size_t SEC_SAA ;
 int dev_err (int ,char*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int sec_ipv4_hashmask(struct sec_dev_info *info, u32 hash_mask)
{
 if (hash_mask & SEC_HASH_IPV4_MASK) {
  dev_err(info->dev, "Sec Ipv4 Hash Mask Input Error!\n ");
  return -EINVAL;
 }

 writel_relaxed(hash_mask,
         info->regs[SEC_SAA] + SEC_IPV4_MASK_TABLE_REG);

 return 0;
}
