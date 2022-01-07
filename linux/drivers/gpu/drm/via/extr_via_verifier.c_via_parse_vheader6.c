
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int verifier_state_t ;
typedef int uint32_t ;
typedef int drm_via_private_t ;


 int state_command ;
 int via_write (int *,int,int ) ;

__attribute__((used)) static __inline__ verifier_state_t
via_parse_vheader6(drm_via_private_t *dev_priv, uint32_t const **buffer,
     const uint32_t *buf_end)
{

 uint32_t addr, count, i;
 const uint32_t *buf = *buffer;

 i = count = *++buf;
 buf += 3;
 while (i--) {
  addr = *buf++;
  via_write(dev_priv, addr, *buf++);
 }
 count <<= 1;
 if (count & 3)
  buf += 4 - (count & 3);
 *buffer = buf;
 return state_command;
}
