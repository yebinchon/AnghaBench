#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct hns_roce_post_mbox {void* token_event_en; void* cmd_tag; void* out_param_h; void* out_param_l; void* in_param_h; void* in_param_l; } ;
struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmq_desc {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_ROCE_OPC_POST_MB ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_cmq_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct hns_roce_dev *hr_dev, u64 in_param,
			      u64 out_param, u32 in_modifier, u8 op_modifier,
			      u16 op, u16 token, int event)
{
	struct hns_roce_cmq_desc desc;
	struct hns_roce_post_mbox *mb = (struct hns_roce_post_mbox *)desc.data;

	FUNC2(&desc, HNS_ROCE_OPC_POST_MB, false);

	mb->in_param_l = FUNC0(in_param);
	mb->in_param_h = FUNC0(in_param >> 32);
	mb->out_param_l = FUNC0(out_param);
	mb->out_param_h = FUNC0(out_param >> 32);
	mb->cmd_tag = FUNC0(in_modifier << 8 | op);
	mb->token_event_en = FUNC0(event << 16 | token);

	return FUNC1(hr_dev, &desc, 1);
}