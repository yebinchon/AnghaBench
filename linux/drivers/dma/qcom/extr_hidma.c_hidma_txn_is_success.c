
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dma_cookie_t ;



__attribute__((used)) static inline bool hidma_txn_is_success(dma_cookie_t cookie,
  dma_cookie_t last_success, dma_cookie_t last_used)
{
 if (last_success <= last_used) {
  if ((cookie <= last_success) || (cookie > last_used))
   return 1;
 } else {
  if ((cookie <= last_success) && (cookie > last_used))
   return 1;
 }
 return 0;
}
