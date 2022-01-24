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
struct mma8450 {struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 int FUNC1 (struct i2c_client*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mma8450 *m, unsigned off, u8 v)
{
	struct i2c_client *c = m->client;
	int error;

	error = FUNC1(c, off, v);
	if (error < 0) {
		FUNC0(&c->dev,
			"failed to write to register 0x%02x, error %d\n",
			off, error);
		return error;
	}

	return 0;
}