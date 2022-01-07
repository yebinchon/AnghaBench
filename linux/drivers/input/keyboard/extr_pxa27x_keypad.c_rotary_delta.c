
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int KPREC_OF0 ;
 int KPREC_UF0 ;

__attribute__((used)) static inline int rotary_delta(uint32_t kprec)
{
 if (kprec & KPREC_OF0)
  return (kprec & 0xff) + 0x7f;
 else if (kprec & KPREC_UF0)
  return (kprec & 0xff) - 0x7f - 0xff;
 else
  return (kprec & 0xff) - 0x7f;
}
