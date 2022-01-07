
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct ib_qp_security {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct ib_ports_pkeys {TYPE_1__ alt; TYPE_1__ main; } ;


 scalar_t__ IB_PORT_PKEY_NOT_VALID ;
 int enforce_qp_pkey_security (int ,int ,struct ib_qp_security*) ;
 int get_pkey_and_subnet_prefix (TYPE_1__*,int *,int *) ;

__attribute__((used)) static int check_qp_port_pkey_settings(struct ib_ports_pkeys *pps,
           struct ib_qp_security *sec)
{
 u64 subnet_prefix;
 u16 pkey;
 int ret = 0;

 if (!pps)
  return 0;

 if (pps->main.state != IB_PORT_PKEY_NOT_VALID) {
  ret = get_pkey_and_subnet_prefix(&pps->main,
       &pkey,
       &subnet_prefix);
  if (ret)
   return ret;

  ret = enforce_qp_pkey_security(pkey,
            subnet_prefix,
            sec);
  if (ret)
   return ret;
 }

 if (pps->alt.state != IB_PORT_PKEY_NOT_VALID) {
  ret = get_pkey_and_subnet_prefix(&pps->alt,
       &pkey,
       &subnet_prefix);
  if (ret)
   return ret;

  ret = enforce_qp_pkey_security(pkey,
            subnet_prefix,
            sec);
 }

 return ret;
}
