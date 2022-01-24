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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  regval ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, u16 *adc_output)
{
	__be16 regval;
	int ret;

	ret = FUNC1(client, (char *)&regval, sizeof(regval));
	if (ret < 0)
		return ret;
	if (ret != sizeof(regval))
		return -EIO;

	*adc_output = FUNC0(regval);

	return 0;
}