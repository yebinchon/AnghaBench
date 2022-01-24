#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct adf_etr_ring_debug_entry {int /*<<< orphan*/  debug; int /*<<< orphan*/  ring_name; } ;
struct adf_etr_ring_data {int ring_number; struct adf_etr_ring_debug_entry* ring_debug; TYPE_1__* bank; } ;
typedef  int /*<<< orphan*/  entry_name ;
struct TYPE_2__ {int /*<<< orphan*/  bank_debug_dir; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  S_IRUSR ; 
 int /*<<< orphan*/  adf_ring_debug_fops ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adf_etr_ring_data*,int /*<<< orphan*/ *) ; 
 struct adf_etr_ring_debug_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

int FUNC4(struct adf_etr_ring_data *ring, const char *name)
{
	struct adf_etr_ring_debug_entry *ring_debug;
	char entry_name[8];

	ring_debug = FUNC1(sizeof(*ring_debug), GFP_KERNEL);
	if (!ring_debug)
		return -ENOMEM;

	FUNC3(ring_debug->ring_name, name, sizeof(ring_debug->ring_name));
	FUNC2(entry_name, sizeof(entry_name), "ring_%02d",
		 ring->ring_number);

	ring_debug->debug = FUNC0(entry_name, S_IRUSR,
						ring->bank->bank_debug_dir,
						ring, &adf_ring_debug_fops);
	ring->ring_debug = ring_debug;
	return 0;
}