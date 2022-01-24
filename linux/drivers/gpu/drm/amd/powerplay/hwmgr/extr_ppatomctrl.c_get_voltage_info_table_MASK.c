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
union voltage_object_info {int /*<<< orphan*/  v3; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  ATOM_VOLTAGE_OBJECT_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VoltageObjectInfo ; 
 scalar_t__ FUNC1 (void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ATOM_VOLTAGE_OBJECT_INFO *FUNC2(void *device)
{
	int index = FUNC0(DATA, VoltageObjectInfo);
	u8 frev, crev;
	u16 size;
	union voltage_object_info *voltage_info;

	voltage_info = (union voltage_object_info *)
		FUNC1(device, index,
			&size, &frev, &crev);

	if (voltage_info != NULL)
		return (ATOM_VOLTAGE_OBJECT_INFO *) &(voltage_info->v3);
	else
		return NULL;
}