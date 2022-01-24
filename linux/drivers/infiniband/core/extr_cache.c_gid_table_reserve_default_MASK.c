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
typedef  int /*<<< orphan*/  u8 ;
struct ib_gid_table {unsigned int sz; int /*<<< orphan*/  default_gid_indices; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ib_device *ib_dev, u8 port,
				      struct ib_gid_table *table)
{
	unsigned int i;
	unsigned long roce_gid_type_mask;
	unsigned int num_default_gids;

	roce_gid_type_mask = FUNC2(ib_dev, port);
	num_default_gids = FUNC1(roce_gid_type_mask);
	/* Reserve starting indices for default GIDs */
	for (i = 0; i < num_default_gids && i < table->sz; i++)
		table->default_gid_indices |= FUNC0(i);
}