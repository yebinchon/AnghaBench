
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwarp_terminate {int etype; } ;



__attribute__((used)) static inline u8 __rdmap_term_etype(struct iwarp_terminate *term)
{
 return term->etype;
}
