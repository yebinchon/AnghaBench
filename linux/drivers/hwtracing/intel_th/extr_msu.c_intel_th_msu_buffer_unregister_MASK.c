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
struct msu_buffer_entry {int /*<<< orphan*/  entry; } ;
struct msu_buffer {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct msu_buffer_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msu_buffer_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msu_buffer_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(const struct msu_buffer *mbuf)
{
	struct msu_buffer_entry *mbe;

	FUNC3(&msu_buffer_mutex);
	mbe = FUNC0(mbuf->name);
	if (mbe) {
		FUNC2(&mbe->entry);
		FUNC1(mbe);
	}
	FUNC4(&msu_buffer_mutex);
}