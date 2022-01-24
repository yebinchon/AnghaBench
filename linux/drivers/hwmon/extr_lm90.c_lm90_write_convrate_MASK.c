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
typedef  int u8 ;
struct lm90_data {int config; int flags; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int LM90_PAUSE_FOR_CONFIG ; 
 int /*<<< orphan*/  LM90_REG_W_CONVRATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct lm90_data*,int) ; 

__attribute__((used)) static int FUNC2(struct lm90_data *data, int val)
{
	u8 config = data->config;
	int err;

	/* Save config and pause conversion */
	if (data->flags & LM90_PAUSE_FOR_CONFIG) {
		err = FUNC1(data, config | 0x40);
		if (err < 0)
			return err;
	}

	/* Set conv rate */
	err = FUNC0(data->client, LM90_REG_W_CONVRATE, val);

	/* Revert change to config */
	FUNC1(data, config);

	return err;
}