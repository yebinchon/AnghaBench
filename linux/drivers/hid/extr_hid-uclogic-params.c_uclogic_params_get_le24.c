
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long const s32 ;
typedef unsigned long __u8 ;



__attribute__((used)) static s32 uclogic_params_get_le24(const void *p)
{
 const __u8 *b = p;
 return b[0] | (b[1] << 8UL) | (b[2] << 16UL);
}
