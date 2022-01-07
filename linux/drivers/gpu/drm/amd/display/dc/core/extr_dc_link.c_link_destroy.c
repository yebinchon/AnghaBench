
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link {int dummy; } ;


 int destruct (struct dc_link*) ;
 int kfree (struct dc_link*) ;

void link_destroy(struct dc_link **link)
{
 destruct(*link);
 kfree(*link);
 *link = ((void*)0);
}
