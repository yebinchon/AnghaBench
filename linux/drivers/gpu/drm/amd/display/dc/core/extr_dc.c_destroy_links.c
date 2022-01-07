
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct dc {size_t link_count; int ** links; } ;


 int link_destroy (int **) ;

__attribute__((used)) static void destroy_links(struct dc *dc)
{
 uint32_t i;

 for (i = 0; i < dc->link_count; i++) {
  if (((void*)0) != dc->links[i])
   link_destroy(&dc->links[i]);
 }
}
