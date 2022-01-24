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
struct mip4_fw_version {void* param; void* app; void* core; void* boot; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC1(const u8 *buf, struct mip4_fw_version *v)
{
	v->boot  = FUNC0(buf + 0);
	v->core  = FUNC0(buf + 2);
	v->app   = FUNC0(buf + 4);
	v->param = FUNC0(buf + 6);
}