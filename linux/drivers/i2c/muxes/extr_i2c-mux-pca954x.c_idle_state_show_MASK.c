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
struct pca954x {int /*<<< orphan*/  idle_state; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct i2c_mux_core* FUNC1 (struct i2c_client*) ; 
 struct pca954x* FUNC2 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct i2c_client* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				    struct device_attribute *attr,
				    char *buf)
{
	struct i2c_client *client = FUNC4(dev);
	struct i2c_mux_core *muxc = FUNC1(client);
	struct pca954x *data = FUNC2(muxc);

	return FUNC3(buf, "%d\n", FUNC0(data->idle_state));
}