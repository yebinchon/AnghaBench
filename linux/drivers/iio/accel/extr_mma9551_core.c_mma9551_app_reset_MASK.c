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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMA9551_APPID_RSC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MMA9551_RSC_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC3(struct i2c_client *client, u32 app_mask)
{
	return FUNC2(client, MMA9551_APPID_RSC,
					 MMA9551_RSC_RESET +
					 FUNC0(app_mask),
					 FUNC1(app_mask));
}