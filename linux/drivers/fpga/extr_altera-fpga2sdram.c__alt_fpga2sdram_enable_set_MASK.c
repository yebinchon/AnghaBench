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
struct alt_fpga2sdram_data {int /*<<< orphan*/  mask; int /*<<< orphan*/  sdrctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALT_SDR_CTL_FPGAPORTRST_OFST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct alt_fpga2sdram_data *priv,
					     bool enable)
{
	return FUNC0(priv->sdrctl, ALT_SDR_CTL_FPGAPORTRST_OFST,
				  priv->mask, enable ? priv->mask : 0);
}