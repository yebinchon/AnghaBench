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
typedef  int /*<<< orphan*/  u32 ;
struct ti_sci_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEVICE_SW_STATE_AUTO_OFF ; 
 int FUNC0 (struct ti_sci_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const struct ti_sci_handle *handle, u32 id)
{
	return FUNC0(handle, id,
				       0, MSG_DEVICE_SW_STATE_AUTO_OFF);
}