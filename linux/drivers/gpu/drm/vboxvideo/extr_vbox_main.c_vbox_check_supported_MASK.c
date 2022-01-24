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
typedef  scalar_t__ u16 ;

/* Variables and functions */
 int /*<<< orphan*/  VBE_DISPI_INDEX_ID ; 
 int /*<<< orphan*/  VBE_DISPI_IOPORT_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

bool FUNC2(u16 id)
{
	u16 dispi_id;

	FUNC1(VBE_DISPI_INDEX_ID, id);
	dispi_id = FUNC0(VBE_DISPI_IOPORT_DATA);

	return dispi_id == id;
}