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
struct timer_list {int dummy; } ;
struct tda998x_priv {int edid_delay_active; int /*<<< orphan*/  detect_work; int /*<<< orphan*/  edid_delay_waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  edid_delay_timer ; 
 struct tda998x_priv* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct tda998x_priv* priv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct tda998x_priv *priv = FUNC0(priv, t, edid_delay_timer);

	priv->edid_delay_active = false;
	FUNC2(&priv->edid_delay_waitq);
	FUNC1(&priv->detect_work);
}