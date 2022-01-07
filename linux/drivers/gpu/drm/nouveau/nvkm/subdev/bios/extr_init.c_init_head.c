
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_init {scalar_t__ head; } ;


 int error (char*) ;
 scalar_t__ init_exec (struct nvbios_init*) ;

__attribute__((used)) static inline int
init_head(struct nvbios_init *init)
{
 if (init_exec(init)) {
  if (init->head >= 0)
   return init->head;
  error("script needs head\n");
 }
 return 0;
}
