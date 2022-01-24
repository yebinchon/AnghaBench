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
struct vc4_label {char const* name; scalar_t__ num_allocated; scalar_t__ size_allocated; } ;
struct vc4_dev {int num_labels; struct vc4_label* bo_labels; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 struct vc4_label* FUNC2 (struct vc4_label*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int FUNC4(struct vc4_dev *vc4, const char *name)
{
	int i;
	int free_slot = -1;

	for (i = 0; i < vc4->num_labels; i++) {
		if (!vc4->bo_labels[i].name) {
			free_slot = i;
		} else if (FUNC3(vc4->bo_labels[i].name, name) == 0) {
			FUNC1(name);
			return i;
		}
	}

	if (free_slot != -1) {
		FUNC0(vc4->bo_labels[free_slot].num_allocated != 0);
		vc4->bo_labels[free_slot].name = name;
		return free_slot;
	} else {
		u32 new_label_count = vc4->num_labels + 1;
		struct vc4_label *new_labels =
			FUNC2(vc4->bo_labels,
				 new_label_count * sizeof(*new_labels),
				 GFP_KERNEL);

		if (!new_labels) {
			FUNC1(name);
			return -1;
		}

		free_slot = vc4->num_labels;
		vc4->bo_labels = new_labels;
		vc4->num_labels = new_label_count;

		vc4->bo_labels[free_slot].name = name;
		vc4->bo_labels[free_slot].num_allocated = 0;
		vc4->bo_labels[free_slot].size_allocated = 0;

		return free_slot;
	}
}