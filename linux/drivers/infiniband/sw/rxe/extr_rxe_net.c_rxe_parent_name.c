
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_dev {TYPE_1__* ndev; } ;
struct TYPE_2__ {char const* name; } ;



const char *rxe_parent_name(struct rxe_dev *rxe, unsigned int port_num)
{
 return rxe->ndev->name;
}
