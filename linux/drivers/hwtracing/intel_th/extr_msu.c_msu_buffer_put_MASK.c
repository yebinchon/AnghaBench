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
struct msu_buffer_entry {int /*<<< orphan*/  owner; } ;
struct msu_buffer {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct msu_buffer_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msu_buffer_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const struct msu_buffer *mbuf)
{
	struct msu_buffer_entry *mbe;

	FUNC2(&msu_buffer_mutex);
	mbe = FUNC0(mbuf->name);
	if (mbe)
		FUNC1(mbe->owner);
	FUNC3(&msu_buffer_mutex);
}