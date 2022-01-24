#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {int /*<<< orphan*/  cached_mode; TYPE_1__* hw_pp; TYPE_3__* hw_ctl; } ;
struct TYPE_5__ {int /*<<< orphan*/  setup_intf_cfg; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_phys_cmd*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ PINGPONG_0 ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpu_encoder_phys*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct dpu_encoder_phys_cmd* FUNC5 (struct dpu_encoder_phys*) ; 

__attribute__((used)) static void FUNC6(
		struct dpu_encoder_phys *phys_enc)
{
	struct dpu_encoder_phys_cmd *cmd_enc =
		FUNC5(phys_enc);

	if (!phys_enc || !phys_enc->hw_ctl || !phys_enc->hw_pp
			|| !phys_enc->hw_ctl->ops.setup_intf_cfg) {
		FUNC1("invalid arg(s), enc %d\n", phys_enc != 0);
		return;
	}

	FUNC0(cmd_enc, "pp %d, enabling mode:\n",
			phys_enc->hw_pp->idx - PINGPONG_0);
	FUNC4(&phys_enc->cached_mode);

	FUNC2(phys_enc);
	FUNC3(phys_enc);
}