
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct srpt_port {int dummy; } ;
struct TYPE_4__ {int attr_mod; int attr_id; } ;
struct ib_mad {TYPE_2__ mad_hdr; } ;
struct TYPE_3__ {int status; } ;
struct ib_dm_mad {TYPE_1__ mad_hdr; } ;






 int DM_MAD_STATUS_UNSUP_METHOD_ATTR ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 int srpt_get_class_port_info (struct ib_dm_mad*) ;
 int srpt_get_ioc (struct srpt_port*,int,struct ib_dm_mad*) ;
 int srpt_get_iou (struct ib_dm_mad*) ;
 int srpt_get_svc_entries (int ,int,int ,int ,struct ib_dm_mad*) ;
 int srpt_service_guid ;

__attribute__((used)) static void srpt_mgmt_method_get(struct srpt_port *sp, struct ib_mad *rq_mad,
     struct ib_dm_mad *rsp_mad)
{
 u16 attr_id;
 u32 slot;
 u8 hi, lo;

 attr_id = be16_to_cpu(rq_mad->mad_hdr.attr_id);
 switch (attr_id) {
 case 131:
  srpt_get_class_port_info(rsp_mad);
  break;
 case 129:
  srpt_get_iou(rsp_mad);
  break;
 case 130:
  slot = be32_to_cpu(rq_mad->mad_hdr.attr_mod);
  srpt_get_ioc(sp, slot, rsp_mad);
  break;
 case 128:
  slot = be32_to_cpu(rq_mad->mad_hdr.attr_mod);
  hi = (u8) ((slot >> 8) & 0xff);
  lo = (u8) (slot & 0xff);
  slot = (u16) ((slot >> 16) & 0xffff);
  srpt_get_svc_entries(srpt_service_guid,
         slot, hi, lo, rsp_mad);
  break;
 default:
  rsp_mad->mad_hdr.status =
      cpu_to_be16(DM_MAD_STATUS_UNSUP_METHOD_ATTR);
  break;
 }
}
