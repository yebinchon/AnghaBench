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
struct TYPE_2__ {scalar_t__ ena_ap; } ;
struct tda998x_priv {int /*<<< orphan*/  audio_mutex; TYPE_1__ audio; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_ENA_AP ; 
 struct tda998x_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev, void *data)
{
	struct tda998x_priv *priv = FUNC0(dev);

	FUNC1(&priv->audio_mutex);

	FUNC3(priv, REG_ENA_AP, 0);
	priv->audio.ena_ap = 0;

	FUNC2(&priv->audio_mutex);
}