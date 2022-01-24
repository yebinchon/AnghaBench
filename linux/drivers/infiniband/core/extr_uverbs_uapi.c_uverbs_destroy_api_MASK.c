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
struct uverbs_api {struct uverbs_api* write_methods; } ;

/* Variables and functions */
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct uverbs_api*) ; 
 int /*<<< orphan*/  FUNC1 (struct uverbs_api*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct uverbs_api *uapi)
{
	if (!uapi)
		return;

	FUNC1(uapi, 0, U32_MAX);
	FUNC0(uapi->write_methods);
	FUNC0(uapi);
}