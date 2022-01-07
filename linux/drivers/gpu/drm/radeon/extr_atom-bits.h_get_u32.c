
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int get_u16 (void*,int) ;

__attribute__((used)) static inline uint32_t get_u32(void *bios, int ptr)
{
    return get_u16(bios, ptr)|(((uint32_t)get_u16(bios, ptr+2))<<16);
}
