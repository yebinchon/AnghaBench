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
struct hlist_node {int dummy; } ;
struct drm_open_hash {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct hlist_node* FUNC0 (struct drm_open_hash*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct hlist_node*) ; 

int FUNC2(struct drm_open_hash *ht, unsigned long key)
{
	struct hlist_node *list;

	list = FUNC0(ht, key);
	if (list) {
		FUNC1(list);
		return 0;
	}
	return -EINVAL;
}