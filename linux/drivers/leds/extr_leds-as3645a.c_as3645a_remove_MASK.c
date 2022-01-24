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
struct i2c_client {int dummy; } ;
struct as3645a {int /*<<< orphan*/  indicator_node; int /*<<< orphan*/  flash_node; int /*<<< orphan*/  mutex; int /*<<< orphan*/  iled_cdev; int /*<<< orphan*/  fled; int /*<<< orphan*/  vfind; int /*<<< orphan*/  vf; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_MODE_EXT_TORCH ; 
 int /*<<< orphan*/  FUNC0 (struct as3645a*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct as3645a* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct as3645a *flash = FUNC2(client);

	FUNC0(flash, AS_MODE_EXT_TORCH, false);

	FUNC6(flash->vf);
	FUNC6(flash->vfind);

	FUNC3(&flash->fled);
	FUNC4(&flash->iled_cdev);

	FUNC5(&flash->mutex);

	FUNC1(flash->flash_node);
	FUNC1(flash->indicator_node);

	return 0;
}