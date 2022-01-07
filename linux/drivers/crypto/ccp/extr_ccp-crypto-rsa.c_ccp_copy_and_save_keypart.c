
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__* kmemdup (scalar_t__ const*,unsigned int,int ) ;

__attribute__((used)) static inline int ccp_copy_and_save_keypart(u8 **kpbuf, unsigned int *kplen,
         const u8 *buf, size_t sz)
{
 int nskip;

 for (nskip = 0; nskip < sz; nskip++)
  if (buf[nskip])
   break;
 *kplen = sz - nskip;
 *kpbuf = kmemdup(buf + nskip, *kplen, GFP_KERNEL);
 if (!*kpbuf)
  return -ENOMEM;

 return 0;
}
