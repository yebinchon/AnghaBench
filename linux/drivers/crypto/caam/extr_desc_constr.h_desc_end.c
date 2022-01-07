
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int desc_len (int * const) ;

__attribute__((used)) static inline u32 *desc_end(u32 * const desc)
{
 return desc + desc_len(desc);
}
