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
struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {scalar_t__ intf_idx; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ INTF_0 ; 
 int FUNC2 (struct dpu_encoder_phys*) ; 
 struct dpu_encoder_phys_cmd* FUNC3 (struct dpu_encoder_phys*) ; 

__attribute__((used)) static int FUNC4(
		struct dpu_encoder_phys *phys_enc)
{
	int rc;
	struct dpu_encoder_phys_cmd *cmd_enc;

	if (!phys_enc)
		return -EINVAL;

	cmd_enc = FUNC3(phys_enc);

	rc = FUNC2(phys_enc);
	if (rc) {
		FUNC1("failed wait_for_idle: id:%u ret:%d intf:%d\n",
			  FUNC0(phys_enc->parent), rc,
			  phys_enc->intf_idx - INTF_0);
	}

	return rc;
}