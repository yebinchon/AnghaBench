
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selector {int dummy; } ;
struct path_selector {struct selector* context; } ;


 int ENOMEM ;
 struct selector* alloc_selector () ;

__attribute__((used)) static int st_create(struct path_selector *ps, unsigned argc, char **argv)
{
 struct selector *s = alloc_selector();

 if (!s)
  return -ENOMEM;

 ps->context = s;
 return 0;
}
