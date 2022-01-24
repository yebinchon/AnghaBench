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
struct platform_device {int dummy; } ;
struct mv_xor_device {scalar_t__ xor_type; struct mv_xor_chan** channels; } ;
struct mv_xor_chan {int /*<<< orphan*/  saved_int_mask_reg; int /*<<< orphan*/  saved_config_reg; } ;
struct mbus_dram_target_info {int dummy; } ;

/* Variables and functions */
 int MV_XOR_MAX_CHANNELS ; 
 scalar_t__ XOR_ARMADA_37XX ; 
 int /*<<< orphan*/  FUNC0 (struct mv_xor_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_xor_chan*) ; 
 struct mbus_dram_target_info* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mv_xor_device*,struct mbus_dram_target_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv_xor_device*) ; 
 struct mv_xor_device* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *dev)
{
	struct mv_xor_device *xordev = FUNC5(dev);
	const struct mbus_dram_target_info *dram;
	int i;

	for (i = 0; i < MV_XOR_MAX_CHANNELS; i++) {
		struct mv_xor_chan *mv_chan = xordev->channels[i];

		if (!mv_chan)
			continue;

		FUNC6(mv_chan->saved_config_reg,
			       FUNC0(mv_chan));
		FUNC6(mv_chan->saved_int_mask_reg,
			       FUNC1(mv_chan));
	}

	if (xordev->xor_type == XOR_ARMADA_37XX) {
		FUNC4(xordev);
		return 0;
	}

	dram = FUNC2();
	if (dram)
		FUNC3(xordev, dram);

	return 0;
}