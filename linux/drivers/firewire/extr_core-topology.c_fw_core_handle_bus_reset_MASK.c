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
struct fw_node {int dummy; } ;
struct fw_card {int generation; int node_id; int bm_node_id; int bm_abdicate; int /*<<< orphan*/  lock; struct fw_node* local_node; int /*<<< orphan*/  color; int /*<<< orphan*/  reset_jiffies; int /*<<< orphan*/  broadcast_channel_auto_allocated; int /*<<< orphan*/  broadcast_channel_allocated; scalar_t__ bm_retries; } ;

/* Variables and functions */
 struct fw_node* FUNC0 (struct fw_card*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_card*,struct fw_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_card*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  report_found_node ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct fw_card*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct fw_card*,struct fw_node*) ; 

void FUNC12(struct fw_card *card, int node_id, int generation,
			      int self_id_count, u32 *self_ids, bool bm_abdicate)
{
	struct fw_node *local_node;
	unsigned long flags;

	/*
	 * If the selfID buffer is not the immediate successor of the
	 * previously processed one, we cannot reliably compare the
	 * old and new topologies.
	 */
	if (!FUNC6(generation, card->generation) &&
	    card->local_node != NULL) {
		FUNC2(card);
		card->bm_retries = 0;
	}

	FUNC8(&card->lock, flags);

	card->broadcast_channel_allocated = card->broadcast_channel_auto_allocated;
	card->node_id = node_id;
	/*
	 * Update node_id before generation to prevent anybody from using
	 * a stale node_id together with a current generation.
	 */
	FUNC7();
	card->generation = generation;
	card->reset_jiffies = FUNC5();
	card->bm_node_id  = 0xffff;
	card->bm_abdicate = bm_abdicate;
	FUNC4(card, 0);

	local_node = FUNC0(card, self_ids, self_id_count);

	FUNC10(card, self_ids, self_id_count);

	card->color++;

	if (local_node == NULL) {
		FUNC3(card, "topology build failed\n");
		/* FIXME: We need to issue a bus reset in this case. */
	} else if (card->local_node == NULL) {
		card->local_node = local_node;
		FUNC1(card, local_node, report_found_node);
	} else {
		FUNC11(card, local_node);
	}

	FUNC9(&card->lock, flags);
}