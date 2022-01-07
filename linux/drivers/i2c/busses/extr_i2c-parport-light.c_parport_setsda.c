
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int setsda; } ;


 TYPE_1__* adapter_parm ;
 int line_set (int,int *) ;
 size_t type ;

__attribute__((used)) static void parport_setsda(void *data, int state)
{
 line_set(state, &adapter_parm[type].setsda);
}
