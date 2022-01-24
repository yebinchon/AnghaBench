#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct hwrm_stat_ctx_free_input {int /*<<< orphan*/  stat_ctx_id; int /*<<< orphan*/  member_0; } ;
struct bnxt_re_dev {struct bnxt_en_dev* en_dev; } ;
struct bnxt_fw_msg {int dummy; } ;
struct bnxt_en_dev {TYPE_1__* en_ops; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  fw_msg ;
struct TYPE_2__ {int (* bnxt_send_fw_msg ) (struct bnxt_en_dev*,int /*<<< orphan*/ ,struct bnxt_fw_msg*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_ROCE_ULP ; 
 int /*<<< orphan*/  DFLT_HWRM_CMD_TIMEOUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  HWRM_STAT_CTX_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_fw_msg*,void*,int,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_re_dev*,void*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt_fw_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt_re_dev*) ; 
 int FUNC6 (struct bnxt_en_dev*,int /*<<< orphan*/ ,struct bnxt_fw_msg*) ; 

__attribute__((used)) static int FUNC7(struct bnxt_re_dev *rdev,
				      u32 fw_stats_ctx_id)
{
	struct bnxt_en_dev *en_dev = rdev->en_dev;
	struct hwrm_stat_ctx_free_input req = {0};
	struct bnxt_fw_msg fw_msg;
	int rc = -EINVAL;

	if (!en_dev)
		return rc;

	FUNC4(&fw_msg, 0, sizeof(fw_msg));

	FUNC1(rdev, (void *)&req, HWRM_STAT_CTX_FREE, -1, -1);
	req.stat_ctx_id = FUNC2(fw_stats_ctx_id);
	FUNC0(&fw_msg, (void *)&req, sizeof(req), (void *)&req,
			    sizeof(req), DFLT_HWRM_CMD_TIMEOUT);
	rc = en_dev->en_ops->bnxt_send_fw_msg(en_dev, BNXT_ROCE_ULP, &fw_msg);
	if (rc)
		FUNC3(FUNC5(rdev),
			"Failed to free HW stats context %#x", rc);

	return rc;
}