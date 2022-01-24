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
typedef  int /*<<< orphan*/  u32 ;
struct fpga_manager {struct a10_fpga_priv* priv; } ;
struct a10_fpga_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  A10_FPGAMGR_IMGCFG_CTL_02_CDRATIO_MASK ; 
 unsigned int A10_FPGAMGR_IMGCFG_CTL_02_CDRATIO_SHIFT ; 
 int /*<<< orphan*/  A10_FPGAMGR_IMGCFG_CTL_02_OFST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 unsigned int FUNC3 (unsigned int,int,int) ; 

__attribute__((used)) static int FUNC4(struct fpga_manager *mgr,
					unsigned int cfg_width,
					const char *buf, size_t count)
{
	struct a10_fpga_priv *priv = mgr->priv;
	unsigned int cd_ratio;
	int encrypt, compress;

	encrypt = FUNC2((u32 *)buf, count / 4);
	if (encrypt < 0)
		return -EINVAL;

	compress = FUNC1((u32 *)buf, count / 4);
	if (compress < 0)
		return -EINVAL;

	cd_ratio = FUNC3(cfg_width, encrypt, compress);

	FUNC0(priv->regmap, A10_FPGAMGR_IMGCFG_CTL_02_OFST,
			   A10_FPGAMGR_IMGCFG_CTL_02_CDRATIO_MASK,
			   cd_ratio << A10_FPGAMGR_IMGCFG_CTL_02_CDRATIO_SHIFT);

	return 0;
}