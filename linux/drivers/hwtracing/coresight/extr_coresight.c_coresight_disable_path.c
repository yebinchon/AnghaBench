
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int coresight_disable_path_from (struct list_head*,int *) ;

void coresight_disable_path(struct list_head *path)
{
 coresight_disable_path_from(path, ((void*)0));
}
