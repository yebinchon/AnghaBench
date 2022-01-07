
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_dev {int mthca_flags; } ;


 int MTHCA_FLAG_SINAI_OPT ;

__attribute__((used)) static inline u32 adjust_key(struct mthca_dev *dev, u32 key)
{
 if (dev->mthca_flags & MTHCA_FLAG_SINAI_OPT)
  return ((key << 20) & 0x800000) | (key & 0x7fffff);
 else
  return key;
}
