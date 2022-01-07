
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_drvdata {scalar_t__ hw_rev; } ;


 scalar_t__ CC_HW_REV_712 ;
 unsigned int HASH_LEN_SIZE_630 ;
 unsigned int HASH_LEN_SIZE_712 ;

unsigned int cc_get_default_hash_len(struct cc_drvdata *drvdata)
{
 if (drvdata->hw_rev >= CC_HW_REV_712)
  return HASH_LEN_SIZE_712;
 else
  return HASH_LEN_SIZE_630;
}
