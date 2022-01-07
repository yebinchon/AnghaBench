
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;


 int PAGE_SHIFT ;

__attribute__((used)) static inline int __sg_page_count(const struct scatterlist *sg)
{
 return sg->length >> PAGE_SHIFT;
}
