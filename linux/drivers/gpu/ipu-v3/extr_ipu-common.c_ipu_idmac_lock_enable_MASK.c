#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ipuv3_channel {scalar_t__ num; struct ipu_soc* ipu; } ;
struct ipu_soc {scalar_t__ ipu_type; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {scalar_t__ chnum; int shift; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 scalar_t__ IPUV3H ; 
 TYPE_1__* idmac_lock_en_info ; 
 int FUNC1 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_soc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct ipuv3_channel *channel, int num_bursts)
{
	struct ipu_soc *ipu = channel->ipu;
	unsigned long flags;
	u32 bursts, regval;
	int i;

	switch (num_bursts) {
	case 0:
	case 1:
		bursts = 0x00; /* locking disabled */
		break;
	case 2:
		bursts = 0x01;
		break;
	case 4:
		bursts = 0x02;
		break;
	case 8:
		bursts = 0x03;
		break;
	default:
		return -EINVAL;
	}

	/*
	 * IPUv3EX / i.MX51 has a different register layout, and on IPUv3M /
	 * i.MX53 channel arbitration locking doesn't seem to work properly.
	 * Allow enabling the lock feature on IPUv3H / i.MX6 only.
	 */
	if (bursts && ipu->ipu_type != IPUV3H)
		return -EINVAL;

	for (i = 0; i < FUNC0(idmac_lock_en_info); i++) {
		if (channel->num == idmac_lock_en_info[i].chnum)
			break;
	}
	if (i >= FUNC0(idmac_lock_en_info))
		return -EINVAL;

	FUNC3(&ipu->lock, flags);

	regval = FUNC1(ipu, idmac_lock_en_info[i].reg);
	regval &= ~(0x03 << idmac_lock_en_info[i].shift);
	regval |= (bursts << idmac_lock_en_info[i].shift);
	FUNC2(ipu, regval, idmac_lock_en_info[i].reg);

	FUNC4(&ipu->lock, flags);

	return 0;
}