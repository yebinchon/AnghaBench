
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u32 ;



__attribute__((used)) static inline void *sh_desc_pdb(u32 * const desc)
{
 return desc + 1;
}
