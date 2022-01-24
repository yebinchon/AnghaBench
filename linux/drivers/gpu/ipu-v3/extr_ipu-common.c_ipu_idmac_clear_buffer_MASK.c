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
struct ipuv3_channel {unsigned int num; struct ipu_soc* ipu; } ;
struct ipu_soc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  IPU_GPR ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu_soc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct ipuv3_channel *channel, u32 buf_num)
{
	struct ipu_soc *ipu = channel->ipu;
	unsigned int chno = channel->num;
	unsigned long flags;

	FUNC5(&ipu->lock, flags);

	FUNC4(ipu, 0xF0300000, IPU_GPR); /* write one to clear */
	switch (buf_num) {
	case 0:
		FUNC4(ipu, FUNC3(chno), FUNC0(chno));
		break;
	case 1:
		FUNC4(ipu, FUNC3(chno), FUNC1(chno));
		break;
	case 2:
		FUNC4(ipu, FUNC3(chno), FUNC2(chno));
		break;
	default:
		break;
	}
	FUNC4(ipu, 0x0, IPU_GPR); /* write one to set */

	FUNC6(&ipu->lock, flags);
}