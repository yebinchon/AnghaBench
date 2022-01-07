
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc {int dummy; } ;


 int destruct (struct dc*) ;
 int kfree (struct dc*) ;

void dc_destroy(struct dc **dc)
{
 destruct(*dc);
 kfree(*dc);
 *dc = ((void*)0);
}
