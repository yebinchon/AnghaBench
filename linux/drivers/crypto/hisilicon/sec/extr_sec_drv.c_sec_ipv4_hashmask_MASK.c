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
struct sec_dev_info {scalar_t__* regs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int SEC_HASH_IPV4_MASK ; 
 scalar_t__ SEC_IPV4_MASK_TABLE_REG ; 
 size_t SEC_SAA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct sec_dev_info *info, u32 hash_mask)
{
	if (hash_mask & SEC_HASH_IPV4_MASK) {
		FUNC0(info->dev, "Sec Ipv4 Hash Mask Input Error!\n ");
		return -EINVAL;
	}

	FUNC1(hash_mask,
		       info->regs[SEC_SAA] + SEC_IPV4_MASK_TABLE_REG);

	return 0;
}