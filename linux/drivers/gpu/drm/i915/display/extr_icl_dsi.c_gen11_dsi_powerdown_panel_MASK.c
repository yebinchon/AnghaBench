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
struct intel_encoder {int /*<<< orphan*/  base; } ;
struct intel_dsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_SEQ_ASSERT_RESET ; 
 int /*<<< orphan*/  MIPI_SEQ_DISPLAY_OFF ; 
 int /*<<< orphan*/  MIPI_SEQ_POWER_OFF ; 
 struct intel_dsi* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_encoder*) ; 

__attribute__((used)) static void FUNC3(struct intel_encoder *encoder)
{
	struct intel_dsi *intel_dsi = FUNC0(&encoder->base);

	FUNC1(intel_dsi, MIPI_SEQ_DISPLAY_OFF);
	FUNC1(intel_dsi, MIPI_SEQ_ASSERT_RESET);
	FUNC1(intel_dsi, MIPI_SEQ_POWER_OFF);

	/* ensure cmds dispatched to panel */
	FUNC2(encoder);
}