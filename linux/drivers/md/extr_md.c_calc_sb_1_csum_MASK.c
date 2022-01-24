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
typedef  unsigned long long u32 ;
struct mdp_superblock_1 {int /*<<< orphan*/  sb_csum; int /*<<< orphan*/  max_dev; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __le32 FUNC3(struct mdp_superblock_1 *sb)
{
	__le32 disk_csum;
	u32 csum;
	unsigned long long newcsum;
	int size = 256 + FUNC2(sb->max_dev)*2;
	__le32 *isuper = (__le32*)sb;

	disk_csum = sb->sb_csum;
	sb->sb_csum = 0;
	newcsum = 0;
	for (; size >= 4; size -= 4)
		newcsum += FUNC2(*isuper++);

	if (size == 2)
		newcsum += FUNC1(*(__le16*) isuper);

	csum = (newcsum & 0xffffffff) + (newcsum >> 32);
	sb->sb_csum = disk_csum;
	return FUNC0(csum);
}