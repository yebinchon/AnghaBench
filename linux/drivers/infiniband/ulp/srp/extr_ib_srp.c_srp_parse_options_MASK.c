#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  substring_t ;
struct TYPE_10__ {int /*<<< orphan*/  ss; } ;
struct TYPE_9__ {int /*<<< orphan*/  ss; } ;
struct TYPE_11__ {int src_specified; TYPE_4__ dst; TYPE_3__ src; } ;
struct TYPE_7__ {int /*<<< orphan*/  raw; } ;
struct TYPE_8__ {void* service_id; int /*<<< orphan*/  pkey; TYPE_1__ orig_dgid; } ;
struct srp_target_port {int using_rdma_cm; int target_can_queue; int io_class; int cmd_sg_cnt; int allow_ext_sg; int sg_tablesize; int comp_vector; int tl_retry_count; TYPE_6__* scsi_host; void* initiator_ext; scalar_t__ queue_size; TYPE_5__ rdma_cm; TYPE_2__ ib_cm; void* ioc_guid; void* id_ext; } ;
struct net {int dummy; } ;
struct TYPE_12__ {int max_sectors; int can_queue; int cmd_per_lun; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
 int SG_MAX_SEGMENTS ; 
#define  SRP_OPT_ALLOW_EXT_SG 145 
#define  SRP_OPT_CMD_SG_ENTRIES 144 
#define  SRP_OPT_COMP_VECTOR 143 
#define  SRP_OPT_DGID 142 
#define  SRP_OPT_ID_EXT 141 
#define  SRP_OPT_INITIATOR_EXT 140 
#define  SRP_OPT_IOC_GUID 139 
#define  SRP_OPT_IO_CLASS 138 
#define  SRP_OPT_IP_DEST 137 
#define  SRP_OPT_IP_SRC 136 
#define  SRP_OPT_MAX_CMD_PER_LUN 135 
#define  SRP_OPT_MAX_SECT 134 
#define  SRP_OPT_PKEY 133 
#define  SRP_OPT_QUEUE_SIZE 132 
#define  SRP_OPT_SERVICE_ID 131 
#define  SRP_OPT_SG_TABLESIZE 130 
#define  SRP_OPT_TARGET_CAN_QUEUE 129 
#define  SRP_OPT_TL_RETRY_COUNT 128 
 int SRP_REV10_IB_IO_CLASS ; 
 int SRP_REV16A_IB_IO_CLASS ; 
 int /*<<< orphan*/  SRP_RSP_SQ_SIZE ; 
 scalar_t__ SRP_TSK_MGMT_SQ_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (unsigned long long) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int* srp_opt_mandatory ; 
 int /*<<< orphan*/  srp_opt_tokens ; 
 int FUNC12 (struct net*,int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC13 (char*) ; 
 char* FUNC14 (char**,char*) ; 

__attribute__((used)) static int FUNC15(struct net *net, const char *buf,
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

	options = FUNC5(buf, GFP_KERNEL);
	if (!options)
		return -ENOMEM;

	sep_opt = options;
	while ((p = FUNC14(&sep_opt, ",\n")) != NULL) {
		if (!*p)
			continue;

		token = FUNC10(p, srp_opt_tokens, args);
		opt_mask |= token;

		switch (token) {
		case SRP_OPT_ID_EXT:
			p = FUNC9(args);
			if (!p) {
				ret = -ENOMEM;
				goto out;
			}
			ret = FUNC6(p, 16, &ull);
			if (ret) {
				FUNC11("invalid id_ext parameter '%s'\n", p);
				FUNC4(p);
				goto out;
			}
			target->id_ext = FUNC2(ull);
			FUNC4(p);
			break;

		case SRP_OPT_IOC_GUID:
			p = FUNC9(args);
			if (!p) {
				ret = -ENOMEM;
				goto out;
			}
			ret = FUNC6(p, 16, &ull);
			if (ret) {
				FUNC11("invalid ioc_guid parameter '%s'\n", p);
				FUNC4(p);
				goto out;
			}
			target->ioc_guid = FUNC2(ull);
			FUNC4(p);
			break;

		case SRP_OPT_DGID:
			p = FUNC9(args);
			if (!p) {
				ret = -ENOMEM;
				goto out;
			}
			if (FUNC13(p) != 32) {
				FUNC11("bad dest GID parameter '%s'\n", p);
				FUNC4(p);
				goto out;
			}

			ret = FUNC3(target->ib_cm.orig_dgid.raw, p, 16);
			FUNC4(p);
			if (ret < 0)
				goto out;
			break;

		case SRP_OPT_PKEY:
			if (FUNC7(args, &token)) {
				FUNC11("bad P_Key parameter '%s'\n", p);
				goto out;
			}
			target->ib_cm.pkey = FUNC1(token);
			break;

		case SRP_OPT_SERVICE_ID:
			p = FUNC9(args);
			if (!p) {
				ret = -ENOMEM;
				goto out;
			}
			ret = FUNC6(p, 16, &ull);
			if (ret) {
				FUNC11("bad service_id parameter '%s'\n", p);
				FUNC4(p);
				goto out;
			}
			target->ib_cm.service_id = FUNC2(ull);
			FUNC4(p);
			break;

		case SRP_OPT_IP_SRC:
			p = FUNC9(args);
			if (!p) {
				ret = -ENOMEM;
				goto out;
			}
			ret = FUNC12(net, &target->rdma_cm.src.ss, p,
					   NULL);
			if (ret < 0) {
				FUNC11("bad source parameter '%s'\n", p);
				FUNC4(p);
				goto out;
			}
			target->rdma_cm.src_specified = true;
			FUNC4(p);
			break;

		case SRP_OPT_IP_DEST:
			p = FUNC9(args);
			if (!p) {
				ret = -ENOMEM;
				goto out;
			}
			ret = FUNC12(net, &target->rdma_cm.dst.ss, p,
					   &has_port);
			if (!has_port)
				ret = -EINVAL;
			if (ret < 0) {
				FUNC11("bad dest parameter '%s'\n", p);
				FUNC4(p);
				goto out;
			}
			target->using_rdma_cm = true;
			FUNC4(p);
			break;

		case SRP_OPT_MAX_SECT:
			if (FUNC8(args, &token)) {
				FUNC11("bad max sect parameter '%s'\n", p);
				goto out;
			}
			target->scsi_host->max_sectors = token;
			break;

		case SRP_OPT_QUEUE_SIZE:
			if (FUNC8(args, &token) || token < 1) {
				FUNC11("bad queue_size parameter '%s'\n", p);
				goto out;
			}
			target->scsi_host->can_queue = token;
			target->queue_size = token + SRP_RSP_SQ_SIZE +
					     SRP_TSK_MGMT_SQ_SIZE;
			if (!(opt_mask & SRP_OPT_MAX_CMD_PER_LUN))
				target->scsi_host->cmd_per_lun = token;
			break;

		case SRP_OPT_MAX_CMD_PER_LUN:
			if (FUNC8(args, &token) || token < 1) {
				FUNC11("bad max cmd_per_lun parameter '%s'\n",
					p);
				goto out;
			}
			target->scsi_host->cmd_per_lun = token;
			break;

		case SRP_OPT_TARGET_CAN_QUEUE:
			if (FUNC8(args, &token) || token < 1) {
				FUNC11("bad max target_can_queue parameter '%s'\n",
					p);
				goto out;
			}
			target->target_can_queue = token;
			break;

		case SRP_OPT_IO_CLASS:
			if (FUNC7(args, &token)) {
				FUNC11("bad IO class parameter '%s'\n", p);
				goto out;
			}
			if (token != SRP_REV10_IB_IO_CLASS &&
			    token != SRP_REV16A_IB_IO_CLASS) {
				FUNC11("unknown IO class parameter value %x specified (use %x or %x).\n",
					token, SRP_REV10_IB_IO_CLASS,
					SRP_REV16A_IB_IO_CLASS);
				goto out;
			}
			target->io_class = token;
			break;

		case SRP_OPT_INITIATOR_EXT:
			p = FUNC9(args);
			if (!p) {
				ret = -ENOMEM;
				goto out;
			}
			ret = FUNC6(p, 16, &ull);
			if (ret) {
				FUNC11("bad initiator_ext value '%s'\n", p);
				FUNC4(p);
				goto out;
			}
			target->initiator_ext = FUNC2(ull);
			FUNC4(p);
			break;

		case SRP_OPT_CMD_SG_ENTRIES:
			if (FUNC8(args, &token) || token < 1 || token > 255) {
				FUNC11("bad max cmd_sg_entries parameter '%s'\n",
					p);
				goto out;
			}
			target->cmd_sg_cnt = token;
			break;

		case SRP_OPT_ALLOW_EXT_SG:
			if (FUNC8(args, &token)) {
				FUNC11("bad allow_ext_sg parameter '%s'\n", p);
				goto out;
			}
			target->allow_ext_sg = !!token;
			break;

		case SRP_OPT_SG_TABLESIZE:
			if (FUNC8(args, &token) || token < 1 ||
					token > SG_MAX_SEGMENTS) {
				FUNC11("bad max sg_tablesize parameter '%s'\n",
					p);
				goto out;
			}
			target->sg_tablesize = token;
			break;

		case SRP_OPT_COMP_VECTOR:
			if (FUNC8(args, &token) || token < 0) {
				FUNC11("bad comp_vector parameter '%s'\n", p);
				goto out;
			}
			target->comp_vector = token;
			break;

		case SRP_OPT_TL_RETRY_COUNT:
			if (FUNC8(args, &token) || token < 2 || token > 7) {
				FUNC11("bad tl_retry_count parameter '%s' (must be a number between 2 and 7)\n",
					p);
				goto out;
			}
			target->tl_retry_count = token;
			break;

		default:
			FUNC11("unknown parameter or missing value '%s' in target creation request\n",
				p);
			goto out;
		}
	}

	for (i = 0; i < FUNC0(srp_opt_mandatory); i++) {
		if ((opt_mask & srp_opt_mandatory[i]) == srp_opt_mandatory[i]) {
			ret = 0;
			break;
		}
	}
	if (ret)
		FUNC11("target creation request is missing one or more parameters\n");

	if (target->scsi_host->cmd_per_lun > target->scsi_host->can_queue
	    && (opt_mask & SRP_OPT_MAX_CMD_PER_LUN))
		FUNC11("cmd_per_lun = %d > queue_size = %d\n",
			target->scsi_host->cmd_per_lun,
			target->scsi_host->can_queue);

out:
	FUNC4(options);
	return ret;
}