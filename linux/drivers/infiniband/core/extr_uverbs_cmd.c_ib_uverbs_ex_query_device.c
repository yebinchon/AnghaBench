
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct uverbs_attr_bundle {int driver_udata; } ;
struct TYPE_12__ {int max_cq_moderation_period; int max_cq_moderation_count; } ;
struct TYPE_21__ {int flags; int max_sge; int max_ops; int max_num_tags; int max_rndv_hdr_size; } ;
struct TYPE_19__ {int max_rwq_indirection_table_size; int max_rwq_indirection_tables; int supported_qpts; } ;
struct TYPE_15__ {int ud_odp_caps; int uc_odp_caps; int rc_odp_caps; } ;
struct TYPE_16__ {TYPE_2__ per_transport_caps; int general_caps; } ;
struct ib_uverbs_ex_query_device_resp {int response_length; int max_dm_size; TYPE_10__ cq_moderation_caps; TYPE_8__ tm_caps; int raw_packet_caps; int max_wq_type_rq; TYPE_6__ rss_caps; int device_cap_flags_ex; int hca_core_clock; int timestamp_mask; int xrc_odp_caps; TYPE_3__ odp_caps; int base; } ;
struct ib_uverbs_ex_query_device {scalar_t__ reserved; scalar_t__ comp_mask; } ;
struct ib_ucontext {struct ib_device* device; } ;
struct TYPE_13__ {int max_cq_moderation_period; int max_cq_moderation_count; } ;
struct TYPE_22__ {int flags; int max_sge; int max_ops; int max_num_tags; int max_rndv_hdr_size; } ;
struct TYPE_20__ {int max_rwq_indirection_table_size; int max_rwq_indirection_tables; int supported_qpts; } ;
struct TYPE_17__ {int xrc_odp_caps; int ud_odp_caps; int uc_odp_caps; int rc_odp_caps; } ;
struct TYPE_18__ {TYPE_4__ per_transport_caps; int general_caps; } ;
struct ib_device_attr {int max_dm_size; TYPE_11__ cq_caps; TYPE_9__ tm_caps; int raw_packet_caps; int max_wq_type_rq; TYPE_7__ rss_caps; int device_cap_flags; int hca_core_clock; int timestamp_mask; TYPE_5__ odp_caps; int member_0; } ;
struct TYPE_14__ {int (* query_device ) (struct ib_device*,struct ib_device_attr*,int *) ;} ;
struct ib_device {TYPE_1__ ops; } ;
typedef int resp ;
typedef int cmd ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct ib_ucontext*) ;
 int PTR_ERR (struct ib_ucontext*) ;
 int copy_query_dev_fields (struct ib_ucontext*,int *,struct ib_device_attr*) ;
 struct ib_ucontext* ib_uverbs_get_ucontext (struct uverbs_attr_bundle*) ;
 int stub1 (struct ib_device*,struct ib_device_attr*,int *) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_ex_query_device*,int) ;
 int uverbs_response (struct uverbs_attr_bundle*,struct ib_uverbs_ex_query_device_resp*,int) ;
 int uverbs_response_length (struct uverbs_attr_bundle*,int) ;

__attribute__((used)) static int ib_uverbs_ex_query_device(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_ex_query_device_resp resp = {};
 struct ib_uverbs_ex_query_device cmd;
 struct ib_device_attr attr = {0};
 struct ib_ucontext *ucontext;
 struct ib_device *ib_dev;
 int err;

 ucontext = ib_uverbs_get_ucontext(attrs);
 if (IS_ERR(ucontext))
  return PTR_ERR(ucontext);
 ib_dev = ucontext->device;

 err = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (err)
  return err;

 if (cmd.comp_mask)
  return -EINVAL;

 if (cmd.reserved)
  return -EINVAL;

 err = ib_dev->ops.query_device(ib_dev, &attr, &attrs->driver_udata);
 if (err)
  return err;

 copy_query_dev_fields(ucontext, &resp.base, &attr);

 resp.odp_caps.general_caps = attr.odp_caps.general_caps;
 resp.odp_caps.per_transport_caps.rc_odp_caps =
  attr.odp_caps.per_transport_caps.rc_odp_caps;
 resp.odp_caps.per_transport_caps.uc_odp_caps =
  attr.odp_caps.per_transport_caps.uc_odp_caps;
 resp.odp_caps.per_transport_caps.ud_odp_caps =
  attr.odp_caps.per_transport_caps.ud_odp_caps;
 resp.xrc_odp_caps = attr.odp_caps.per_transport_caps.xrc_odp_caps;

 resp.timestamp_mask = attr.timestamp_mask;
 resp.hca_core_clock = attr.hca_core_clock;
 resp.device_cap_flags_ex = attr.device_cap_flags;
 resp.rss_caps.supported_qpts = attr.rss_caps.supported_qpts;
 resp.rss_caps.max_rwq_indirection_tables =
  attr.rss_caps.max_rwq_indirection_tables;
 resp.rss_caps.max_rwq_indirection_table_size =
  attr.rss_caps.max_rwq_indirection_table_size;
 resp.max_wq_type_rq = attr.max_wq_type_rq;
 resp.raw_packet_caps = attr.raw_packet_caps;
 resp.tm_caps.max_rndv_hdr_size = attr.tm_caps.max_rndv_hdr_size;
 resp.tm_caps.max_num_tags = attr.tm_caps.max_num_tags;
 resp.tm_caps.max_ops = attr.tm_caps.max_ops;
 resp.tm_caps.max_sge = attr.tm_caps.max_sge;
 resp.tm_caps.flags = attr.tm_caps.flags;
 resp.cq_moderation_caps.max_cq_moderation_count =
  attr.cq_caps.max_cq_moderation_count;
 resp.cq_moderation_caps.max_cq_moderation_period =
  attr.cq_caps.max_cq_moderation_period;
 resp.max_dm_size = attr.max_dm_size;
 resp.response_length = uverbs_response_length(attrs, sizeof(resp));

 return uverbs_response(attrs, &resp, sizeof(resp));
}
