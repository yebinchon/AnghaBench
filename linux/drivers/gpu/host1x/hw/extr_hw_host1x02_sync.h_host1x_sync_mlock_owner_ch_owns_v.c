
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 host1x_sync_mlock_owner_ch_owns_v(u32 r)
{
 return (r >> 0) & 0x1;
}
