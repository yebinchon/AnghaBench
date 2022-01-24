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
struct nct7904_data {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nct7904_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct nct7904_data*) ; 

__attribute__((used)) static int FUNC3(struct nct7904_data *data,
			     unsigned int bank, unsigned int reg, u8 val)
{
	struct i2c_client *client = data->client;
	int ret;

	ret = FUNC1(data, bank);
	if (ret == 0)
		ret = FUNC0(client, reg, val);

	FUNC2(data);
	return ret;
}