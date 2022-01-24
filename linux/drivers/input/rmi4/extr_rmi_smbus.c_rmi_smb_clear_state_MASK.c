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
struct rmi_smb_xport {int /*<<< orphan*/  mappingtable_mutex; int /*<<< orphan*/  mapping_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rmi_smb_xport *rmi_smb)
{
	/* the mapping table has been flushed, discard the current one */
	FUNC1(&rmi_smb->mappingtable_mutex);
	FUNC0(rmi_smb->mapping_table, 0, sizeof(rmi_smb->mapping_table));
	FUNC2(&rmi_smb->mappingtable_mutex);
}