
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_port_info {int dummy; } ;
struct ide_hw {int dummy; } ;
struct ide_host {int dummy; } ;


 int ENOMEM ;
 struct ide_host* ide_host_alloc (struct ide_port_info const*,struct ide_hw**,unsigned int) ;
 int ide_host_free (struct ide_host*) ;
 int ide_host_register (struct ide_host*,struct ide_port_info const*,struct ide_hw**) ;

int ide_host_add(const struct ide_port_info *d, struct ide_hw **hws,
   unsigned int n_ports, struct ide_host **hostp)
{
 struct ide_host *host;
 int rc;

 host = ide_host_alloc(d, hws, n_ports);
 if (host == ((void*)0))
  return -ENOMEM;

 rc = ide_host_register(host, d, hws);
 if (rc) {
  ide_host_free(host);
  return rc;
 }

 if (hostp)
  *hostp = host;

 return 0;
}
