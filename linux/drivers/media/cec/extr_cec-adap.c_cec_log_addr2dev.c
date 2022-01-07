
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {unsigned int* primary_device_type; } ;
struct cec_adapter {TYPE_1__ log_addrs; } ;


 int cec_log_addr2idx (struct cec_adapter const*,int ) ;

__attribute__((used)) static unsigned int cec_log_addr2dev(const struct cec_adapter *adap, u8 log_addr)
{
 int i = cec_log_addr2idx(adap, log_addr);

 return adap->log_addrs.primary_device_type[i < 0 ? 0 : i];
}
