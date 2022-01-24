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
struct dpu_encoder_phys {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpu_encoder_phys_cmd*) ; 
 struct dpu_encoder_phys_cmd* FUNC2 (struct dpu_encoder_phys*) ; 

__attribute__((used)) static void FUNC3(struct dpu_encoder_phys *phys_enc)
{
	struct dpu_encoder_phys_cmd *cmd_enc =
		FUNC2(phys_enc);

	if (!phys_enc) {
		FUNC0("invalid encoder\n");
		return;
	}
	FUNC1(cmd_enc);
}