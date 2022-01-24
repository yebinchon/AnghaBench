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
struct idma64_hw_desc {int /*<<< orphan*/  llp; } ;
struct idma64_desc {struct idma64_hw_desc* hw; } ;
struct idma64_chan {int /*<<< orphan*/  mask; struct idma64_desc* desc; } ;
struct idma64 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_EN ; 
 int /*<<< orphan*/  CTL_HI ; 
 int /*<<< orphan*/  CTL_LO ; 
 int /*<<< orphan*/  DAR ; 
 int FUNC0 (unsigned long) ; 
 int IDMA64C_CTLL_LLP_D_EN ; 
 int IDMA64C_CTLL_LLP_S_EN ; 
 int /*<<< orphan*/  LLP ; 
 int /*<<< orphan*/  SAR ; 
 int /*<<< orphan*/  FUNC1 (struct idma64*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct idma64_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct idma64_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct idma64 *idma64, struct idma64_chan *idma64c)
{
	struct idma64_desc *desc = idma64c->desc;
	struct idma64_hw_desc *hw = &desc->hw[0];

	FUNC3(idma64c, SAR, 0);
	FUNC3(idma64c, DAR, 0);

	FUNC2(idma64c, CTL_HI, FUNC0(~0UL));
	FUNC2(idma64c, CTL_LO, IDMA64C_CTLL_LLP_S_EN | IDMA64C_CTLL_LLP_D_EN);

	FUNC3(idma64c, LLP, hw->llp);

	FUNC1(idma64, CH_EN, idma64c->mask);
}