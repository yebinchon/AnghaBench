
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_init {int offset; } ;


 int init_exec_set (struct nvbios_init*,int) ;
 int trace (char*) ;

__attribute__((used)) static void
init_resume(struct nvbios_init *init)
{
 trace("RESUME\n");
 init->offset += 1;
 init_exec_set(init, 1);
}
