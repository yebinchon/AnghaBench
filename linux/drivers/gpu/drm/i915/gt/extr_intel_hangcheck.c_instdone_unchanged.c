
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool instdone_unchanged(u32 current_instdone, u32 *old_instdone)
{
 u32 tmp = current_instdone | *old_instdone;
 bool unchanged;

 unchanged = tmp == *old_instdone;
 *old_instdone |= tmp;

 return unchanged;
}
