
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ qkey_viol_cntr; } ;
struct rxe_port {int port_lock; TYPE_1__ attr; } ;


 scalar_t__ min (int ,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void set_qkey_viol_cntr(struct rxe_port *port)
{
 spin_lock_bh(&port->port_lock);
 port->attr.qkey_viol_cntr = min((u32)0xffff,
     port->attr.qkey_viol_cntr + 1);
 spin_unlock_bh(&port->port_lock);
}
