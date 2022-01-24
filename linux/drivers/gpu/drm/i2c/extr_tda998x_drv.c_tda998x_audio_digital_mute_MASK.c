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
struct tda998x_priv {int /*<<< orphan*/  audio_mutex; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct tda998x_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tda998x_priv*,int) ; 

int FUNC4(struct device *dev, void *data, bool enable)
{
	struct tda998x_priv *priv = FUNC0(dev);

	FUNC1(&priv->audio_mutex);

	FUNC3(priv, enable);

	FUNC2(&priv->audio_mutex);
	return 0;
}