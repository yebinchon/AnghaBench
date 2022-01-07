
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pkey_tbl_len; int gid_tbl_len; } ;
struct rxe_port {int* pkey_tbl; int port_lock; int port_guid; TYPE_2__ attr; } ;
struct rxe_dev {TYPE_1__* ndev; struct rxe_port port; } ;
struct TYPE_3__ {int dev_addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int addrconf_addr_eui48 (unsigned char*,int ) ;
 int* kcalloc (int ,int,int ) ;
 int rxe_init_port_param (struct rxe_port*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int rxe_init_ports(struct rxe_dev *rxe)
{
 struct rxe_port *port = &rxe->port;

 rxe_init_port_param(port);

 if (!port->attr.pkey_tbl_len || !port->attr.gid_tbl_len)
  return -EINVAL;

 port->pkey_tbl = kcalloc(port->attr.pkey_tbl_len,
   sizeof(*port->pkey_tbl), GFP_KERNEL);

 if (!port->pkey_tbl)
  return -ENOMEM;

 port->pkey_tbl[0] = 0xffff;
 addrconf_addr_eui48((unsigned char *)&port->port_guid,
       rxe->ndev->dev_addr);

 spin_lock_init(&port->port_lock);

 return 0;
}
