
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx842_slentry {int dummy; } ;
struct nx842_scatterlist {int entry_nr; } ;



__attribute__((used)) static inline unsigned long nx842_get_scatterlist_size(
    struct nx842_scatterlist *sl)
{
 return sl->entry_nr * sizeof(struct nx842_slentry);
}
