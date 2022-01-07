
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_init {int link; } ;


 int error (char*) ;
 scalar_t__ init_exec (struct nvbios_init*) ;

__attribute__((used)) static inline int
init_link(struct nvbios_init *init)
{
 if (init_exec(init)) {
  if (init->link)
   return init->link == 2;
  error("script needs OR link\n");
 }
 return 0;
}
