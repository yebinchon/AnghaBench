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
struct dlm_lock_resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_NL ; 
 int FUNC0 (struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct dlm_lock_resource *res)
{
	return FUNC0(res, DLM_LOCK_NL);
}