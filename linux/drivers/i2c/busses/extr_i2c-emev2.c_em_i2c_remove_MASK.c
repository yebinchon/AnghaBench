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
struct platform_device {int dummy; } ;
struct em_i2c_device {int /*<<< orphan*/  sclk; int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct em_i2c_device* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	struct em_i2c_device *priv = FUNC2(dev);

	FUNC1(&priv->adap);
	FUNC0(priv->sclk);

	return 0;
}