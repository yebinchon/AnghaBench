
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct srp_host {TYPE_1__* srp_dev; int port; } ;
struct ib_port_attr {int subnet_timeout; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {TYPE_2__* dev; } ;


 int dev_name (int *) ;
 int ib_query_port (TYPE_2__*,int ,struct ib_port_attr*) ;
 int pr_warn (char*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u8 srp_get_subnet_timeout(struct srp_host *host)
{
 struct ib_port_attr attr;
 int ret;
 u8 subnet_timeout = 18;

 ret = ib_query_port(host->srp_dev->dev, host->port, &attr);
 if (ret == 0)
  subnet_timeout = attr.subnet_timeout;

 if (unlikely(subnet_timeout < 15))
  pr_warn("%s: subnet timeout %d may cause SRP login to fail.\n",
   dev_name(&host->srp_dev->dev->dev), subnet_timeout);

 return subnet_timeout;
}
