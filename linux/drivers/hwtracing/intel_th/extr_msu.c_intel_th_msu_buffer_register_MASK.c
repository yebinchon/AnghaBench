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
struct msu_buffer_entry {int /*<<< orphan*/  entry; struct module* owner; struct msu_buffer const* mbuf; } ;
struct msu_buffer {int /*<<< orphan*/  name; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msu_buffer_entry*) ; 
 struct msu_buffer_entry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msu_buffer_list ; 
 int /*<<< orphan*/  msu_buffer_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(const struct msu_buffer *mbuf,
				 struct module *owner)
{
	struct msu_buffer_entry *mbe;
	int ret = 0;

	mbe = FUNC2(sizeof(*mbe), GFP_KERNEL);
	if (!mbe)
		return -ENOMEM;

	FUNC4(&msu_buffer_mutex);
	if (FUNC0(mbuf->name)) {
		ret = -EEXIST;
		FUNC1(mbe);
		goto unlock;
	}

	mbe->mbuf = mbuf;
	mbe->owner = owner;
	FUNC3(&mbe->entry, &msu_buffer_list);
unlock:
	FUNC5(&msu_buffer_mutex);

	return ret;
}