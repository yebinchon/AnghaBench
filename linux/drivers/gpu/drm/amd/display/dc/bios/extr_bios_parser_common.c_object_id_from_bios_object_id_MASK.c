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
struct graphics_object_id {int /*<<< orphan*/  member_0; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
typedef  enum object_enum_id { ____Placeholder_object_enum_id } object_enum_id ;

/* Variables and functions */
 int ENUM_ID_UNKNOWN ; 
 int OBJECT_TYPE_UNKNOWN ; 
 struct graphics_object_id FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

struct graphics_object_id FUNC4(uint32_t bios_object_id)
{
	enum object_type type;
	enum object_enum_id enum_id;
	struct graphics_object_id go_id = { 0 };

	type = FUNC3(bios_object_id);

	if (OBJECT_TYPE_UNKNOWN == type)
		return go_id;

	enum_id = FUNC1(bios_object_id);

	if (ENUM_ID_UNKNOWN == enum_id)
		return go_id;

	go_id = FUNC0(
			FUNC2(type, bios_object_id), enum_id, type);

	return go_id;
}