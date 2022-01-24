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
struct dmi_sysfs_entry {int dummy; } ;
struct dmi_read_state {int /*<<< orphan*/  pos; int /*<<< orphan*/  count; int /*<<< orphan*/  buf; } ;
struct dmi_header {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t FUNC0 (struct dmi_header const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dmi_header const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(struct dmi_sysfs_entry *entry,
					 const struct dmi_header *dh,
					 void *_state)
{
	struct dmi_read_state *state = _state;
	size_t entry_length;

	entry_length = FUNC0(dh);

	return FUNC1(state->buf, state->count,
				       &state->pos, dh, entry_length);
}