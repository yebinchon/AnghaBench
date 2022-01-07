
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;

__attribute__((used)) static inline int __max1363_check_event_mask(int thismask, int checkmask)
{
 int ret = 0;

 if (thismask < 4) {
  if (checkmask & ~0x0F) {
   ret = -EBUSY;
   goto error_ret;
  }
 } else if (thismask < 6) {
  if (checkmask & ~0x30) {
   ret = -EBUSY;
   goto error_ret;
  }
 } else if (checkmask & ~0xC0)
  ret = -EBUSY;
error_ret:
 return ret;
}
