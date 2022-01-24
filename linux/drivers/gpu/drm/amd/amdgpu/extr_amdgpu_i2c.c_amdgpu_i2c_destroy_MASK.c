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
struct amdgpu_i2c_chan {int /*<<< orphan*/  adapter; int /*<<< orphan*/  has_aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_i2c_chan*) ; 

void FUNC3(struct amdgpu_i2c_chan *i2c)
{
	if (!i2c)
		return;
	FUNC0(i2c->has_aux);
	FUNC1(&i2c->adapter);
	FUNC2(i2c);
}