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
struct bop_ring_buffer {int /*<<< orphan*/  begin; } ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ FUNC0 (struct bop_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct bop_ring_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct bop_ring_buffer *brb)
{
	if (FUNC0(brb))
		return -ENODATA;

	brb->begin = FUNC1(brb, brb->begin);

	return 0;
}