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
struct seq_file {struct adf_etr_ring_data* private; } ;
struct adf_etr_ring_data {void* base_addr; int /*<<< orphan*/  msg_size; int /*<<< orphan*/  ring_size; } ;
typedef  int loff_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* SEQ_START_TOKEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ring_read_lock ; 

__attribute__((used)) static void *FUNC3(struct seq_file *sfile, loff_t *pos)
{
	struct adf_etr_ring_data *ring = sfile->private;

	FUNC2(&ring_read_lock);
	if (*pos == 0)
		return SEQ_START_TOKEN;

	if (*pos >= (FUNC1(ring->ring_size) /
		     FUNC0(ring->msg_size)))
		return NULL;

	return ring->base_addr +
		(FUNC0(ring->msg_size) * (*pos)++);
}