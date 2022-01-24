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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  id ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {scalar_t__ is_legacy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SENSOR_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* scpi_info ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(u16 sensor, u64 *val)
{
	__le16 id = FUNC0(sensor);
	__le64 value;
	int ret;

	ret = FUNC3(CMD_SENSOR_VALUE, &id, sizeof(id),
				&value, sizeof(value));
	if (ret)
		return ret;

	if (scpi_info->is_legacy)
		/* only 32-bits supported, upper 32 bits can be junk */
		*val = FUNC1((__le32 *)&value);
	else
		*val = FUNC2(value);

	return 0;
}