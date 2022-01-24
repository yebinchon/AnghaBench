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
typedef  int /*<<< orphan*/  u8 ;
struct scmi_info {int /*<<< orphan*/ * protocols_imp; } ;
struct scmi_handle {int dummy; } ;

/* Variables and functions */
 struct scmi_info* FUNC0 (struct scmi_handle const*) ; 

void FUNC1(const struct scmi_handle *handle,
				     u8 *prot_imp)
{
	struct scmi_info *info = FUNC0(handle);

	info->protocols_imp = prot_imp;
}