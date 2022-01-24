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
typedef  scalar_t__ u32 ;
struct i2c_demux_pinctrl_priv {scalar_t__ cur_chan; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_demux_pinctrl_priv*,scalar_t__) ; 
 int FUNC1 (struct i2c_demux_pinctrl_priv*) ; 

__attribute__((used)) static int FUNC2(struct i2c_demux_pinctrl_priv *priv, u32 new_chan)
{
	int ret;

	if (new_chan == priv->cur_chan)
		return 0;

	ret = FUNC1(priv);
	if (ret)
		return ret;

	return FUNC0(priv, new_chan);
}