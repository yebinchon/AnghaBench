
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int substring_t ;
struct TYPE_10__ {int ss; } ;
struct TYPE_9__ {int ss; } ;
struct TYPE_11__ {int src_specified; TYPE_4__ dst; TYPE_3__ src; } ;
struct TYPE_7__ {int raw; } ;
struct TYPE_8__ {void* service_id; int pkey; TYPE_1__ orig_dgid; } ;
struct srp_target_port {int using_rdma_cm; int target_can_queue; int io_class; int cmd_sg_cnt; int allow_ext_sg; int sg_tablesize; int comp_vector; int tl_retry_count; TYPE_6__* scsi_host; void* initiator_ext; scalar_t__ queue_size; TYPE_5__ rdma_cm; TYPE_2__ ib_cm; void* ioc_guid; void* id_ext; } ;
struct net {int dummy; } ;
struct TYPE_12__ {int max_sectors; int can_queue; int cmd_per_lun; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;
 int SG_MAX_SEGMENTS ;
 int SRP_REV10_IB_IO_CLASS ;
 int SRP_REV16A_IB_IO_CLASS ;
 int SRP_RSP_SQ_SIZE ;
 scalar_t__ SRP_TSK_MGMT_SQ_SIZE ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be64 (unsigned long long) ;
 int hex2bin (int ,char*,int) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int kstrtoull (char*,int,unsigned long long*) ;
 int match_hex (int *,int*) ;
 int match_int (int *,int*) ;
 char* match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 int pr_warn (char*,...) ;
 int* srp_opt_mandatory ;
 int srp_opt_tokens ;
 int srp_parse_in (struct net*,int *,char*,int*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int srp_parse_options(struct net *net, const char *buf,
        struct srp_target_port *target)
{
 char *options, *sep_opt;
 char *p;
 substring_t args[MAX_OPT_ARGS];
 unsigned long long ull;
 bool has_port;
 int opt_mask = 0;
 int token;
 int ret = -EINVAL;
 int i;

 options = kstrdup(buf, GFP_KERNEL);
 if (!options)
  return -ENOMEM;

 sep_opt = options;
 while ((p = strsep(&sep_opt, ",\n")) != ((void*)0)) {
  if (!*p)
   continue;

  token = match_token(p, srp_opt_tokens, args);
  opt_mask |= token;

  switch (token) {
  case 141:
   p = match_strdup(args);
   if (!p) {
    ret = -ENOMEM;
    goto out;
   }
   ret = kstrtoull(p, 16, &ull);
   if (ret) {
    pr_warn("invalid id_ext parameter '%s'\n", p);
    kfree(p);
    goto out;
   }
   target->id_ext = cpu_to_be64(ull);
   kfree(p);
   break;

  case 139:
   p = match_strdup(args);
   if (!p) {
    ret = -ENOMEM;
    goto out;
   }
   ret = kstrtoull(p, 16, &ull);
   if (ret) {
    pr_warn("invalid ioc_guid parameter '%s'\n", p);
    kfree(p);
    goto out;
   }
   target->ioc_guid = cpu_to_be64(ull);
   kfree(p);
   break;

  case 142:
   p = match_strdup(args);
   if (!p) {
    ret = -ENOMEM;
    goto out;
   }
   if (strlen(p) != 32) {
    pr_warn("bad dest GID parameter '%s'\n", p);
    kfree(p);
    goto out;
   }

   ret = hex2bin(target->ib_cm.orig_dgid.raw, p, 16);
   kfree(p);
   if (ret < 0)
    goto out;
   break;

  case 133:
   if (match_hex(args, &token)) {
    pr_warn("bad P_Key parameter '%s'\n", p);
    goto out;
   }
   target->ib_cm.pkey = cpu_to_be16(token);
   break;

  case 131:
   p = match_strdup(args);
   if (!p) {
    ret = -ENOMEM;
    goto out;
   }
   ret = kstrtoull(p, 16, &ull);
   if (ret) {
    pr_warn("bad service_id parameter '%s'\n", p);
    kfree(p);
    goto out;
   }
   target->ib_cm.service_id = cpu_to_be64(ull);
   kfree(p);
   break;

  case 136:
   p = match_strdup(args);
   if (!p) {
    ret = -ENOMEM;
    goto out;
   }
   ret = srp_parse_in(net, &target->rdma_cm.src.ss, p,
        ((void*)0));
   if (ret < 0) {
    pr_warn("bad source parameter '%s'\n", p);
    kfree(p);
    goto out;
   }
   target->rdma_cm.src_specified = 1;
   kfree(p);
   break;

  case 137:
   p = match_strdup(args);
   if (!p) {
    ret = -ENOMEM;
    goto out;
   }
   ret = srp_parse_in(net, &target->rdma_cm.dst.ss, p,
        &has_port);
   if (!has_port)
    ret = -EINVAL;
   if (ret < 0) {
    pr_warn("bad dest parameter '%s'\n", p);
    kfree(p);
    goto out;
   }
   target->using_rdma_cm = 1;
   kfree(p);
   break;

  case 134:
   if (match_int(args, &token)) {
    pr_warn("bad max sect parameter '%s'\n", p);
    goto out;
   }
   target->scsi_host->max_sectors = token;
   break;

  case 132:
   if (match_int(args, &token) || token < 1) {
    pr_warn("bad queue_size parameter '%s'\n", p);
    goto out;
   }
   target->scsi_host->can_queue = token;
   target->queue_size = token + SRP_RSP_SQ_SIZE +
          SRP_TSK_MGMT_SQ_SIZE;
   if (!(opt_mask & 135))
    target->scsi_host->cmd_per_lun = token;
   break;

  case 135:
   if (match_int(args, &token) || token < 1) {
    pr_warn("bad max cmd_per_lun parameter '%s'\n",
     p);
    goto out;
   }
   target->scsi_host->cmd_per_lun = token;
   break;

  case 129:
   if (match_int(args, &token) || token < 1) {
    pr_warn("bad max target_can_queue parameter '%s'\n",
     p);
    goto out;
   }
   target->target_can_queue = token;
   break;

  case 138:
   if (match_hex(args, &token)) {
    pr_warn("bad IO class parameter '%s'\n", p);
    goto out;
   }
   if (token != SRP_REV10_IB_IO_CLASS &&
       token != SRP_REV16A_IB_IO_CLASS) {
    pr_warn("unknown IO class parameter value %x specified (use %x or %x).\n",
     token, SRP_REV10_IB_IO_CLASS,
     SRP_REV16A_IB_IO_CLASS);
    goto out;
   }
   target->io_class = token;
   break;

  case 140:
   p = match_strdup(args);
   if (!p) {
    ret = -ENOMEM;
    goto out;
   }
   ret = kstrtoull(p, 16, &ull);
   if (ret) {
    pr_warn("bad initiator_ext value '%s'\n", p);
    kfree(p);
    goto out;
   }
   target->initiator_ext = cpu_to_be64(ull);
   kfree(p);
   break;

  case 144:
   if (match_int(args, &token) || token < 1 || token > 255) {
    pr_warn("bad max cmd_sg_entries parameter '%s'\n",
     p);
    goto out;
   }
   target->cmd_sg_cnt = token;
   break;

  case 145:
   if (match_int(args, &token)) {
    pr_warn("bad allow_ext_sg parameter '%s'\n", p);
    goto out;
   }
   target->allow_ext_sg = !!token;
   break;

  case 130:
   if (match_int(args, &token) || token < 1 ||
     token > SG_MAX_SEGMENTS) {
    pr_warn("bad max sg_tablesize parameter '%s'\n",
     p);
    goto out;
   }
   target->sg_tablesize = token;
   break;

  case 143:
   if (match_int(args, &token) || token < 0) {
    pr_warn("bad comp_vector parameter '%s'\n", p);
    goto out;
   }
   target->comp_vector = token;
   break;

  case 128:
   if (match_int(args, &token) || token < 2 || token > 7) {
    pr_warn("bad tl_retry_count parameter '%s' (must be a number between 2 and 7)\n",
     p);
    goto out;
   }
   target->tl_retry_count = token;
   break;

  default:
   pr_warn("unknown parameter or missing value '%s' in target creation request\n",
    p);
   goto out;
  }
 }

 for (i = 0; i < ARRAY_SIZE(srp_opt_mandatory); i++) {
  if ((opt_mask & srp_opt_mandatory[i]) == srp_opt_mandatory[i]) {
   ret = 0;
   break;
  }
 }
 if (ret)
  pr_warn("target creation request is missing one or more parameters\n");

 if (target->scsi_host->cmd_per_lun > target->scsi_host->can_queue
     && (opt_mask & 135))
  pr_warn("cmd_per_lun = %d > queue_size = %d\n",
   target->scsi_host->cmd_per_lun,
   target->scsi_host->can_queue);

out:
 kfree(options);
 return ret;
}
