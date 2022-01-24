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
struct tda9950_priv {int dummy; } ;
struct cec_adapter {struct tda9950_priv* priv; } ;

/* Variables and functions */
 int FUNC0 (struct tda9950_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct tda9950_priv*) ; 

__attribute__((used)) static int FUNC2(struct cec_adapter *adap, bool enable)
{
	struct tda9950_priv *priv = adap->priv;

	if (!enable) {
		FUNC1(priv);
		return 0;
	} else {
		return FUNC0(priv);
	}
}