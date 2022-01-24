#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct si2165_state {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  REG_OVERSAMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (struct si2165_state*) ; 
 int FUNC3 (struct si2165_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct si2165_state *state, u32 dvb_rate)
{
	u64 oversamp;
	u32 reg_value;

	if (!dvb_rate)
		return -EINVAL;

	oversamp = FUNC2(state);
	oversamp <<= 23;
	FUNC1(oversamp, dvb_rate);
	reg_value = oversamp & 0x3fffffff;

	FUNC0(&state->client->dev, "Write oversamp=%#x\n", reg_value);
	return FUNC3(state, REG_OVERSAMP, reg_value);
}