
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_sec_meta {int dummy; } ;
struct pblk {int oob_meta_size; } ;



__attribute__((used)) static inline int pblk_is_oob_meta_supported(struct pblk *pblk)
{
 return pblk->oob_meta_size >= sizeof(struct pblk_sec_meta);
}
