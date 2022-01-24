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
struct hgsmi_buffer_header {int dummy; } ;
struct gen_pool {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_PORT_HGSMI_GUEST ; 
 int /*<<< orphan*/  FUNC0 (struct gen_pool*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct gen_pool *guest_pool, void *buf)
{
	phys_addr_t offset;

	offset = FUNC0(guest_pool, (unsigned long)buf -
				       sizeof(struct hgsmi_buffer_header));
	FUNC2(offset, VGA_PORT_HGSMI_GUEST);
	/* Make the compiler aware that the host has changed memory. */
	FUNC1();

	return 0;
}