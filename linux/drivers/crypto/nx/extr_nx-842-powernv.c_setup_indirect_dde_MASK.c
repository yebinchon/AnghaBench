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
struct data_descriptor_entry {unsigned int count; int /*<<< orphan*/  address; int /*<<< orphan*/  length; scalar_t__ index; scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct data_descriptor_entry*) ; 

__attribute__((used)) static void FUNC3(struct data_descriptor_entry *dde,
			       struct data_descriptor_entry *ddl,
			       unsigned int dde_count, unsigned int byte_count)
{
	dde->flags = 0;
	dde->count = dde_count;
	dde->index = 0;
	dde->length = FUNC0(byte_count);
	dde->address = FUNC1(FUNC2(ddl));
}