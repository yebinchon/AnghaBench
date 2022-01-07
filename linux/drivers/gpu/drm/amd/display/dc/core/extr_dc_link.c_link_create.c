
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_init_data {int dummy; } ;
struct dc_link {int dummy; } ;


 int GFP_KERNEL ;
 int construct (struct dc_link*,struct link_init_data const*) ;
 int kfree (struct dc_link*) ;
 struct dc_link* kzalloc (int,int ) ;

struct dc_link *link_create(const struct link_init_data *init_params)
{
 struct dc_link *link =
   kzalloc(sizeof(*link), GFP_KERNEL);

 if (((void*)0) == link)
  goto alloc_fail;

 if (0 == construct(link, init_params))
  goto construct_fail;

 return link;

construct_fail:
 kfree(link);

alloc_fail:
 return ((void*)0);
}
