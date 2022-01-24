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
struct i915_wa_list {unsigned int count; struct i915_wa* list; int /*<<< orphan*/  wa_count; } ;
struct i915_wa {int mask; int val; int /*<<< orphan*/  reg; int /*<<< orphan*/  read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (unsigned int,unsigned int const) ; 
 unsigned int WA_LIST_CHUNK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int const) ; 
 struct i915_wa* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_wa*,struct i915_wa*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_wa,struct i915_wa) ; 

__attribute__((used)) static void FUNC9(struct i915_wa_list *wal, const struct i915_wa *wa)
{
	unsigned int addr = FUNC4(wa->reg);
	unsigned int start = 0, end = wal->count;
	const unsigned int grow = WA_LIST_CHUNK;
	struct i915_wa *wa_;

	FUNC2(!FUNC5(grow));

	if (FUNC3(wal->count, grow)) { /* Either uninitialized or full. */
		struct i915_wa *list;

		list = FUNC6(FUNC0(wal->count + 1, grow), sizeof(*wa),
				     GFP_KERNEL);
		if (!list) {
			FUNC1("No space for workaround init!\n");
			return;
		}

		if (wal->list)
			FUNC7(list, wal->list, sizeof(*wa) * wal->count);

		wal->list = list;
	}

	while (start < end) {
		unsigned int mid = start + (end - start) / 2;

		if (FUNC4(wal->list[mid].reg) < addr) {
			start = mid + 1;
		} else if (FUNC4(wal->list[mid].reg) > addr) {
			end = mid;
		} else {
			wa_ = &wal->list[mid];

			if ((wa->mask & ~wa_->mask) == 0) {
				FUNC1("Discarding overwritten w/a for reg %04x (mask: %08x, value: %08x)\n",
					  FUNC4(wa_->reg),
					  wa_->mask, wa_->val);

				wa_->val &= ~wa->mask;
			}

			wal->wa_count++;
			wa_->val |= wa->val;
			wa_->mask |= wa->mask;
			wa_->read |= wa->read;
			return;
		}
	}

	wal->wa_count++;
	wa_ = &wal->list[wal->count++];
	*wa_ = *wa;

	while (wa_-- > wal->list) {
		FUNC2(FUNC4(wa_[0].reg) ==
			   FUNC4(wa_[1].reg));
		if (FUNC4(wa_[1].reg) >
		    FUNC4(wa_[0].reg))
			break;

		FUNC8(wa_[1], wa_[0]);
	}
}