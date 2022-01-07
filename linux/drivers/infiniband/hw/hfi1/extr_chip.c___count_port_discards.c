
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {int port_xmit_discards; } ;


 int incr_cntr64 (int *) ;

__attribute__((used)) static inline void __count_port_discards(struct hfi1_pportdata *ppd)
{
 incr_cntr64(&ppd->port_xmit_discards);
}
