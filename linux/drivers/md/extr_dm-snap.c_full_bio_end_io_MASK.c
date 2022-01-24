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
struct bio {scalar_t__ bi_status; void* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct bio *bio)
{
	void *callback_data = bio->bi_private;

	FUNC0(callback_data, 0, bio->bi_status ? 1 : 0);
}