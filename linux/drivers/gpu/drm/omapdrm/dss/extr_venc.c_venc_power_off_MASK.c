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
struct venc_device {int /*<<< orphan*/  vdda_dac_reg; int /*<<< orphan*/  output; int /*<<< orphan*/  dss; } ;

/* Variables and functions */
 int /*<<< orphan*/  VENC_OUTPUT_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct venc_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct venc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct venc_device *venc)
{
	FUNC4(venc, VENC_OUTPUT_CONTROL, 0);
	FUNC1(venc->dss, 0);

	FUNC0(&venc->output);

	FUNC2(venc->vdda_dac_reg);

	FUNC3(venc);
}