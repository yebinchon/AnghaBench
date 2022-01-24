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
struct dpu_encoder_phys_cmd {scalar_t__ serialize_wait4pp; } ;
struct dpu_encoder_phys {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct dpu_encoder_phys*) ; 
 scalar_t__ FUNC1 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_phys*) ; 
 struct dpu_encoder_phys_cmd* FUNC3 (struct dpu_encoder_phys*) ; 

__attribute__((used)) static int FUNC4(
		struct dpu_encoder_phys *phys_enc)
{
	int rc = 0;
	struct dpu_encoder_phys_cmd *cmd_enc;

	if (!phys_enc)
		return -EINVAL;

	cmd_enc = FUNC3(phys_enc);

	/* only required for master controller */
	if (FUNC1(phys_enc))
		rc = FUNC0(phys_enc);

	/* required for both controllers */
	if (!rc && cmd_enc->serialize_wait4pp)
		FUNC2(phys_enc);

	return rc;
}