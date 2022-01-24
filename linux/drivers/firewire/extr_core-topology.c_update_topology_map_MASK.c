#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct fw_card {int /*<<< orphan*/ * topology_map; TYPE_1__* root_node; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int node_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fw_card *card,
				u32 *self_ids, int self_id_count)
{
	int node_count = (card->root_node->node_id & 0x3f) + 1;
	__be32 *map = card->topology_map;

	*map++ = FUNC1((self_id_count + 2) << 16);
	*map++ = FUNC1(FUNC0(card->topology_map[1]) + 1);
	*map++ = FUNC1((node_count << 16) | self_id_count);

	while (self_id_count--)
		*map++ = FUNC2(self_ids++);

	FUNC3(card->topology_map);
}