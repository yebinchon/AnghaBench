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
typedef  int /*<<< orphan*/  val_buf ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, u16 reg, u16 *val)
{
	__be16 val_buf;
	int error;

	error = FUNC1(client, reg, &val_buf, sizeof(val_buf));
	if (error)
		return error;

	*val = FUNC0(val_buf);

	return 0;
}