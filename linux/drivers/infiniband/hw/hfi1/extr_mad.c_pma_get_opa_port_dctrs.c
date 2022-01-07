
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;
struct hfi1_devdata {int dummy; } ;
struct _port_dctrs {void* port_multicast_rcv_pkts; void* port_multicast_xmit_pkts; void* port_rcv_pkts; void* port_xmit_pkts; void* port_rcv_data; void* port_xmit_data; } ;


 int CNTR_INVALID_VL ;
 int C_DC_MC_RCV_PKTS ;
 int C_DC_MC_XMIT_PKTS ;
 int C_DC_RCV_FLITS ;
 int C_DC_RCV_PKTS ;
 int C_DC_XMIT_FLITS ;
 int C_DC_XMIT_PKTS ;
 void* cpu_to_be64 (int ) ;
 struct hfi1_devdata* dd_from_ibdev (struct ib_device*) ;
 int read_dev_cntr (struct hfi1_devdata*,int ,int ) ;

__attribute__((used)) static void pma_get_opa_port_dctrs(struct ib_device *ibdev,
       struct _port_dctrs *rsp)
{
 struct hfi1_devdata *dd = dd_from_ibdev(ibdev);

 rsp->port_xmit_data = cpu_to_be64(read_dev_cntr(dd, C_DC_XMIT_FLITS,
      CNTR_INVALID_VL));
 rsp->port_rcv_data = cpu_to_be64(read_dev_cntr(dd, C_DC_RCV_FLITS,
      CNTR_INVALID_VL));
 rsp->port_xmit_pkts = cpu_to_be64(read_dev_cntr(dd, C_DC_XMIT_PKTS,
      CNTR_INVALID_VL));
 rsp->port_rcv_pkts = cpu_to_be64(read_dev_cntr(dd, C_DC_RCV_PKTS,
      CNTR_INVALID_VL));
 rsp->port_multicast_xmit_pkts =
  cpu_to_be64(read_dev_cntr(dd, C_DC_MC_XMIT_PKTS,
       CNTR_INVALID_VL));
 rsp->port_multicast_rcv_pkts =
  cpu_to_be64(read_dev_cntr(dd, C_DC_MC_RCV_PKTS,
       CNTR_INVALID_VL));
}
