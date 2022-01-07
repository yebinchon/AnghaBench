
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int REGISTER_STRIDE ;

__attribute__((used)) static inline u32 host1x_sync_syncpt_thresh_int_disable_r(unsigned int id)
{
 return 0xf00 + id * REGISTER_STRIDE;
}
