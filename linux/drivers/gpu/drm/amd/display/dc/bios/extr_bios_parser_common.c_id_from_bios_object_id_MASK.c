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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
#define  OBJECT_TYPE_CONNECTOR 131 
#define  OBJECT_TYPE_ENCODER 130 
#define  OBJECT_TYPE_GENERIC 129 
#define  OBJECT_TYPE_GPU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC4(enum object_type type,
	uint32_t bios_object_id)
{
	switch (type) {
	case OBJECT_TYPE_GPU:
		return FUNC3(bios_object_id);
	case OBJECT_TYPE_ENCODER:
		return (uint32_t)FUNC1(bios_object_id);
	case OBJECT_TYPE_CONNECTOR:
		return (uint32_t)FUNC0(
				bios_object_id);
	case OBJECT_TYPE_GENERIC:
		return FUNC2(bios_object_id);
	default:
		return 0;
	}
}