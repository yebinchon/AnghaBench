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
struct st_i2c_client {int /*<<< orphan*/  count; } ;
struct st_i2c_dev {struct st_i2c_client client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct st_i2c_dev*) ; 

__attribute__((used)) static void FUNC3(struct st_i2c_dev *i2c_dev)
{
	struct st_i2c_client *c = &i2c_dev->client;

	FUNC0(i2c_dev);

	if (!c->count)
		/* End of xfer, send stop or repstart */
		FUNC1(i2c_dev);
	else
		FUNC2(i2c_dev);
}