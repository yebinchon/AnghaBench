
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ib_pma_portcounters_ext {scalar_t__ port_select; int port_multicast_rcv_packets; int port_multicast_xmit_packets; scalar_t__ port_unicast_rcv_packets; scalar_t__ port_unicast_xmit_packets; int port_rcv_packets; int port_xmit_packets; int port_rcv_data; int port_xmit_data; } ;
struct TYPE_2__ {scalar_t__ attr_mod; int status; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct _port_dctrs {int port_multicast_rcv_pkts; int port_multicast_xmit_pkts; int port_rcv_pkts; int port_xmit_pkts; int port_rcv_data; int port_xmit_data; } ;
typedef int rsp ;


 int IB_SMP_INVALID_FIELD ;
 int memset (struct _port_dctrs*,int ,int) ;
 int pma_get_opa_port_dctrs (struct ib_device*,struct _port_dctrs*) ;
 int reply (struct ib_mad_hdr*) ;

__attribute__((used)) static int pma_get_ib_portcounters_ext(struct ib_pma_mad *pmp,
           struct ib_device *ibdev, u8 port)
{
 struct ib_pma_portcounters_ext *p = (struct ib_pma_portcounters_ext *)
      pmp->data;
 struct _port_dctrs rsp;

 if (pmp->mad_hdr.attr_mod != 0 || p->port_select != port) {
  pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
  goto bail;
 }

 memset(&rsp, 0, sizeof(rsp));
 pma_get_opa_port_dctrs(ibdev, &rsp);

 p->port_xmit_data = rsp.port_xmit_data;
 p->port_rcv_data = rsp.port_rcv_data;
 p->port_xmit_packets = rsp.port_xmit_pkts;
 p->port_rcv_packets = rsp.port_rcv_pkts;
 p->port_unicast_xmit_packets = 0;
 p->port_unicast_rcv_packets = 0;
 p->port_multicast_xmit_packets = rsp.port_multicast_xmit_pkts;
 p->port_multicast_rcv_packets = rsp.port_multicast_rcv_pkts;

bail:
 return reply((struct ib_mad_hdr *)pmp);
}
