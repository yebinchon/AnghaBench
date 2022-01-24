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
struct smq_policy {unsigned int hotspot_level_jump; int /*<<< orphan*/  hotspot_table; int /*<<< orphan*/  hotspot; int /*<<< orphan*/  hotspot_hit_bits; int /*<<< orphan*/  hotspot_alloc; int /*<<< orphan*/  hotspot_stats; } ;
struct entry {int /*<<< orphan*/  oblock; int /*<<< orphan*/  level; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;

/* Variables and functions */
 struct entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,struct entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct entry*) ; 
 struct entry* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct entry*) ; 
 struct entry* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct entry*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct smq_policy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct entry *FUNC13(struct smq_policy *mq, dm_oblock_t b)
{
	unsigned hi;
	dm_oblock_t hb = FUNC12(mq, b);
	struct entry *e = FUNC4(&mq->hotspot_table, hb);

	if (e) {
		FUNC9(&mq->hotspot_stats, e->level);

		hi = FUNC2(&mq->hotspot_alloc, e);
		FUNC8(&mq->hotspot, e,
			  FUNC11(hi, mq->hotspot_hit_bits) ?
			  0u : mq->hotspot_level_jump,
			  NULL, NULL);

	} else {
		FUNC10(&mq->hotspot_stats);

		e = FUNC0(&mq->hotspot_alloc);
		if (!e) {
			e = FUNC6(&mq->hotspot);
			if (e) {
				FUNC5(&mq->hotspot_table, e);
				hi = FUNC2(&mq->hotspot_alloc, e);
				FUNC1(hi, mq->hotspot_hit_bits);
			}

		}

		if (e) {
			e->oblock = hb;
			FUNC7(&mq->hotspot, e);
			FUNC3(&mq->hotspot_table, e);
		}
	}

	return e;
}