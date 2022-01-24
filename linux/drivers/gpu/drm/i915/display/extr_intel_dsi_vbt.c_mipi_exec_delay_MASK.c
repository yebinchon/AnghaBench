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
typedef  scalar_t__ u32 ;
struct intel_dsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static const u8 *FUNC2(struct intel_dsi *intel_dsi, const u8 *data)
{
	u32 delay = *((const u32 *) data);

	FUNC0("\n");

	FUNC1(delay, delay + 10);
	data += 4;

	return data;
}