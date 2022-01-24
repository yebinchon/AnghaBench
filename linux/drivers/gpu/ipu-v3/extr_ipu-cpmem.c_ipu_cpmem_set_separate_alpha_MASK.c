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
struct ipuv3_channel {int /*<<< orphan*/  num; struct ipu_soc* ipu; } ;
struct ipu_soc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDMAC_SEP_ALPHA ; 
 int /*<<< orphan*/  IPU_FIELD_ALBM ; 
 int /*<<< orphan*/  IPU_FIELD_ALU ; 
 int /*<<< orphan*/  IPU_FIELD_CRE ; 
 int /*<<< orphan*/  FUNC1 (struct ipuv3_channel*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu_soc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ipuv3_channel *ch)
{
	struct ipu_soc *ipu = ch->ipu;
	int albm;
	u32 val;

	albm = FUNC2(ch->num);
	if (albm < 0)
		return;

	FUNC1(ch, IPU_FIELD_ALU, 1);
	FUNC1(ch, IPU_FIELD_ALBM, albm);
	FUNC1(ch, IPU_FIELD_CRE, 1);

	val = FUNC3(ipu, IDMAC_SEP_ALPHA);
	val |= FUNC0(ch->num);
	FUNC4(ipu, val, IDMAC_SEP_ALPHA);
}