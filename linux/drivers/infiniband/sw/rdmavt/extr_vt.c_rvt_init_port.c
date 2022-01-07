
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rvt_ibport {int * pkey_table; } ;
struct rvt_dev_info {struct rvt_ibport** ports; } ;



int rvt_init_port(struct rvt_dev_info *rdi, struct rvt_ibport *port,
    int port_index, u16 *pkey_table)
{

 rdi->ports[port_index] = port;
 rdi->ports[port_index]->pkey_table = pkey_table;

 return 0;
}
