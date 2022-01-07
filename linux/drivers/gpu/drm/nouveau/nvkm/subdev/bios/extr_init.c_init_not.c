
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_init {int offset; } ;


 int init_exec_inv (struct nvbios_init*) ;
 int trace (char*) ;

__attribute__((used)) static void
init_not(struct nvbios_init *init)
{
 trace("NOT\n");
 init->offset += 1;
 init_exec_inv(init);
}
