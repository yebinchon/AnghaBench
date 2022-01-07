
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bucket {int dummy; } ;


 scalar_t__ GC_SECTORS_USED (struct bucket*) ;

__attribute__((used)) static bool bucket_cmp(struct bucket *l, struct bucket *r)
{
 return GC_SECTORS_USED(l) < GC_SECTORS_USED(r);
}
