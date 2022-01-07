
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int num_log_addrs; scalar_t__* log_addr; } ;
struct cec_adapter {TYPE_1__ log_addrs; } ;



__attribute__((used)) static int cec_log_addr2idx(const struct cec_adapter *adap, u8 log_addr)
{
 int i;

 for (i = 0; i < adap->log_addrs.num_log_addrs; i++)
  if (adap->log_addrs.log_addr[i] == log_addr)
   return i;
 return -1;
}
