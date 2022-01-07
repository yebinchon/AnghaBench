
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_hdcp_shim {int (* read_ksv_ready ) (struct intel_digital_port*,int*) ;} ;
struct intel_digital_port {int dummy; } ;


 int ETIMEDOUT ;
 int __wait_for (int,int,int,int,int) ;
 int stub1 (struct intel_digital_port*,int*) ;

__attribute__((used)) static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *intel_dig_port,
        const struct intel_hdcp_shim *shim)
{
 int ret, read_ret;
 bool ksv_ready;


 ret = __wait_for(read_ret = shim->read_ksv_ready(intel_dig_port,
        &ksv_ready),
    read_ret || ksv_ready, 5 * 1000 * 1000, 1000,
    100 * 1000);
 if (ret)
  return ret;
 if (read_ret)
  return read_ret;
 if (!ksv_ready)
  return -ETIMEDOUT;

 return 0;
}
