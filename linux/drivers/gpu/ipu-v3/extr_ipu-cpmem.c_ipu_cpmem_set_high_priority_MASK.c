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
typedef  int u32 ;
struct ipuv3_channel {int num; struct ipu_soc* ipu; } ;
struct ipu_soc {scalar_t__ ipu_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IPUV3EX ; 
 int /*<<< orphan*/  IPU_FIELD_ID ; 
 int /*<<< orphan*/  FUNC1 (struct ipuv3_channel*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_soc*,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct ipuv3_channel *ch)
{
	struct ipu_soc *ipu = ch->ipu;
	u32 val;

	if (ipu->ipu_type == IPUV3EX)
		FUNC1(ch, IPU_FIELD_ID, 1);

	val = FUNC2(ipu, FUNC0(ch->num));
	val |= 1 << (ch->num % 32);
	FUNC3(ipu, val, FUNC0(ch->num));
}