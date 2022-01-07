
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cpuinfo_x86 {int x86_model; } ;



__attribute__((used)) static bool cpu_has_tjmax(struct cpuinfo_x86 *c)
{
 u8 model = c->x86_model;

 return model > 0xe &&
        model != 0x1c &&
        model != 0x26 &&
        model != 0x27 &&
        model != 0x35 &&
        model != 0x36;
}
