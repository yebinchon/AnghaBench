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
struct compress {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOW_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct compress *c)
{
	return FUNC0(&c->pool, ALLOW_FAIL) == 0;
}