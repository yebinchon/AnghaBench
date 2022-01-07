
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct opa_port_error_info_msg {int * port_select_mask; struct _port_ei* port; } ;
struct TYPE_16__ {int status; int attr_mod; } ;
struct opa_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_13__ {int slid; int pkey; int status; } ;
struct TYPE_23__ {int slid; int pkey; int status; } ;
struct TYPE_20__ {int packet_flit2; int packet_flit1; int status_and_code; } ;
struct hfi1_devdata {int err_info_fmconfig; int err_info_uncorrectable; TYPE_10__ err_info_rcv_constraint; TYPE_8__ err_info_xmit_constraint; TYPE_5__ err_info_rcvport; } ;
struct TYPE_15__ {int status_and_code; } ;
struct TYPE_14__ {int status_and_code; } ;
struct TYPE_24__ {void* slid; void* pkey; int status; } ;
struct TYPE_22__ {void* slid; void* pkey; int status; } ;
struct TYPE_21__ {int status_and_sc; } ;
struct TYPE_17__ {int packet_flit2; int packet_flit1; } ;
struct TYPE_18__ {TYPE_2__ ei1to12; } ;
struct TYPE_19__ {TYPE_3__ ei; int status_and_code; } ;
struct _port_ei {int port_number; TYPE_12__ fm_config_ei; TYPE_11__ uncorrectable_ei; TYPE_9__ port_rcv_constraint_ei; TYPE_7__ port_xmit_constraint_ei; TYPE_6__ excessive_buffer_overrun_ei; TYPE_4__ port_rcv_ei; } ;
typedef int port_mask ;


 int IB_SMP_INVALID_FIELD ;
 int OPA_AM_NPORT (int ) ;
 int RCV_ERR_INFO ;
 int RCV_ERR_INFO_RCV_EXCESS_BUFFER_OVERRUN_SC_SMASK ;
 int RCV_ERR_INFO_RCV_EXCESS_BUFFER_OVERRUN_SMASK ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 void* cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 struct hfi1_devdata* dd_from_ibdev (struct ib_device*) ;
 int find_first_bit (unsigned long*,int) ;
 int hweight64 (int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct _port_ei*,int ,int) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int reply (struct ib_mad_hdr*) ;

__attribute__((used)) static int pma_get_opa_errorinfo(struct opa_pma_mad *pmp,
     struct ib_device *ibdev,
     u8 port, u32 *resp_len)
{
 size_t response_data_size;
 struct _port_ei *rsp;
 struct opa_port_error_info_msg *req;
 struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
 u64 port_mask;
 u32 num_ports;
 u8 port_num;
 u8 num_pslm;
 u64 reg;

 req = (struct opa_port_error_info_msg *)pmp->data;
 rsp = &req->port[0];

 num_ports = OPA_AM_NPORT(be32_to_cpu(pmp->mad_hdr.attr_mod));
 num_pslm = hweight64(be64_to_cpu(req->port_select_mask[3]));

 memset(rsp, 0, sizeof(*rsp));

 if (num_ports != 1 || num_ports != num_pslm) {
  pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)pmp);
 }


 response_data_size = sizeof(struct opa_port_error_info_msg);

 if (response_data_size > sizeof(pmp->data)) {
  pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)pmp);
 }





 port_mask = be64_to_cpu(req->port_select_mask[3]);
 port_num = find_first_bit((unsigned long *)&port_mask,
      sizeof(port_mask) * 8);

 if (port_num != port) {
  pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)pmp);
 }
 rsp->port_number = port;


 rsp->port_rcv_ei.status_and_code =
  dd->err_info_rcvport.status_and_code;
 memcpy(&rsp->port_rcv_ei.ei.ei1to12.packet_flit1,
        &dd->err_info_rcvport.packet_flit1, sizeof(u64));
 memcpy(&rsp->port_rcv_ei.ei.ei1to12.packet_flit2,
        &dd->err_info_rcvport.packet_flit2, sizeof(u64));


 reg = read_csr(dd, RCV_ERR_INFO);
 if (reg & RCV_ERR_INFO_RCV_EXCESS_BUFFER_OVERRUN_SMASK) {




  u8 tmp = (u8)reg;

  tmp &= RCV_ERR_INFO_RCV_EXCESS_BUFFER_OVERRUN_SC_SMASK;
  tmp <<= 2;
  rsp->excessive_buffer_overrun_ei.status_and_sc = tmp;

  rsp->excessive_buffer_overrun_ei.status_and_sc |= 0x80;
 }

 rsp->port_xmit_constraint_ei.status =
  dd->err_info_xmit_constraint.status;
 rsp->port_xmit_constraint_ei.pkey =
  cpu_to_be16(dd->err_info_xmit_constraint.pkey);
 rsp->port_xmit_constraint_ei.slid =
  cpu_to_be32(dd->err_info_xmit_constraint.slid);

 rsp->port_rcv_constraint_ei.status =
  dd->err_info_rcv_constraint.status;
 rsp->port_rcv_constraint_ei.pkey =
  cpu_to_be16(dd->err_info_rcv_constraint.pkey);
 rsp->port_rcv_constraint_ei.slid =
  cpu_to_be32(dd->err_info_rcv_constraint.slid);


 rsp->uncorrectable_ei.status_and_code = dd->err_info_uncorrectable;


 rsp->fm_config_ei.status_and_code = dd->err_info_fmconfig;

 if (resp_len)
  *resp_len += response_data_size;

 return reply((struct ib_mad_hdr *)pmp);
}
