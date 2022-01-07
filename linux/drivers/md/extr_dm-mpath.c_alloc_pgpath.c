
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgpath {int is_active; } ;


 int GFP_KERNEL ;
 struct pgpath* kzalloc (int,int ) ;

__attribute__((used)) static struct pgpath *alloc_pgpath(void)
{
 struct pgpath *pgpath = kzalloc(sizeof(*pgpath), GFP_KERNEL);

 if (!pgpath)
  return ((void*)0);

 pgpath->is_active = 1;

 return pgpath;
}
