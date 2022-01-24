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
struct hv_ring_buffer_info {int /*<<< orphan*/  ring_buffer_mutex; int /*<<< orphan*/ * ring_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct hv_ring_buffer_info *ring_info)
{
	FUNC0(&ring_info->ring_buffer_mutex);
	FUNC2(ring_info->ring_buffer);
	ring_info->ring_buffer = NULL;
	FUNC1(&ring_info->ring_buffer_mutex);
}