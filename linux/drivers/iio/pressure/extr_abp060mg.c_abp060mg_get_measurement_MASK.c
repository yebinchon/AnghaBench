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
typedef  int u16 ;
struct i2c_client {int dummy; } ;
struct abp_state {int /*<<< orphan*/  mreq_len; struct i2c_client* client; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int ABP060MG_ERROR_MASK ; 
 int ABP060MG_MAX_COUNTS ; 
 int ABP060MG_MIN_COUNTS ; 
 int /*<<< orphan*/  ABP060MG_RESP_TIME_MS ; 
 int EIO ; 
 int IIO_VAL_INT ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct abp_state *state, int *val)
{
	struct i2c_client *client = state->client;
	__be16 buf[2];
	u16 pressure;
	int ret;

	buf[0] = 0;
	ret = FUNC2(client, (u8 *)&buf, state->mreq_len);
	if (ret < 0)
		return ret;

	FUNC3(ABP060MG_RESP_TIME_MS);

	ret = FUNC1(client, (u8 *)&buf, sizeof(buf));
	if (ret < 0)
		return ret;

	pressure = FUNC0(buf[0]);
	if (pressure & ABP060MG_ERROR_MASK)
		return -EIO;

	if (pressure < ABP060MG_MIN_COUNTS || pressure > ABP060MG_MAX_COUNTS)
		return -EIO;

	*val = pressure;

	return IIO_VAL_INT;
}