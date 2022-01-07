
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_sc_ipc {int dummy; } ;


 int EPROBE_DEFER ;
 struct imx_sc_ipc* imx_sc_ipc_handle ;

int imx_scu_get_handle(struct imx_sc_ipc **ipc)
{
 if (!imx_sc_ipc_handle)
  return -EPROBE_DEFER;

 *ipc = imx_sc_ipc_handle;
 return 0;
}
