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
struct msu_buffer_entry {struct msu_buffer const* mbuf; int /*<<< orphan*/  owner; } ;
struct msu_buffer {int dummy; } ;

/* Variables and functions */
 struct msu_buffer_entry* FUNC0 (char const*) ; 
 int /*<<< orphan*/  msu_buffer_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct msu_buffer *
FUNC4(const char *name)
{
	struct msu_buffer_entry *mbe;

	FUNC1(&msu_buffer_mutex);
	mbe = FUNC0(name);
	if (mbe && !FUNC3(mbe->owner))
		mbe = NULL;
	FUNC2(&msu_buffer_mutex);

	return mbe ? mbe->mbuf : NULL;
}