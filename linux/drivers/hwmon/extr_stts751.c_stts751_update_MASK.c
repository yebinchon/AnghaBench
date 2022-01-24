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
struct stts751_priv {size_t interval; int data_valid; scalar_t__ last_update; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stts751_intervals ; 
 int FUNC1 (struct stts751_priv*) ; 
 int FUNC2 (struct stts751_priv*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct stts751_priv *priv)
{
	int ret;
	int cache_time = FUNC0(stts751_intervals[priv->interval]);

	if (FUNC3(jiffies,	priv->last_update + cache_time) ||
	    !priv->data_valid) {
		ret = FUNC2(priv);
		if (ret)
			return ret;

		ret = FUNC1(priv);
		if (ret)
			return ret;
		priv->data_valid = true;
		priv->last_update = jiffies;
	}

	return 0;
}