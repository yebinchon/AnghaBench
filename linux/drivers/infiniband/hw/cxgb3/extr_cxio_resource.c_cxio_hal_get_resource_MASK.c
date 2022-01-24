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
typedef  int /*<<< orphan*/  u32 ;
struct kfifo {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kfifo*,unsigned char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC1(struct kfifo *fifo, spinlock_t * lock)
{
	u32 entry;
	if (FUNC0(fifo, (unsigned char *) &entry, sizeof(u32), lock))
		return entry;
	else
		return 0;	/* fifo emptry */
}