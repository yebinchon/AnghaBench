
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roce_hem_item {int start; int end; } ;



__attribute__((used)) static inline bool hem_list_page_is_in_range(struct roce_hem_item *hem,
          int offset)
{
 return (hem->start <= offset && offset <= hem->end);
}
