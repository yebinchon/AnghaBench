
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pkey_tbl; } ;
struct rxe_dev {TYPE_1__ port; } ;


 int kfree (int *) ;

__attribute__((used)) static void rxe_cleanup_ports(struct rxe_dev *rxe)
{
 kfree(rxe->port.pkey_tbl);
 rxe->port.pkey_tbl = ((void*)0);

}
