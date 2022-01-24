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
struct pcf8591_data {int control; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int PCF8591_CONTROL_AICH_MASK ; 
 int FUNC0 (int) ; 
 struct pcf8591_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int) ; 
 int input_mode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, int channel)
{
	u8 value;
	struct i2c_client *client = FUNC6(dev);
	struct pcf8591_data *data = FUNC1(client);

	FUNC4(&data->update_lock);

	if ((data->control & PCF8591_CONTROL_AICH_MASK) != channel) {
		data->control = (data->control & ~PCF8591_CONTROL_AICH_MASK)
			      | channel;
		FUNC3(client, data->control);

		/*
		 * The first byte transmitted contains the conversion code of
		 * the previous read cycle. FLUSH IT!
		 */
		FUNC2(client);
	}
	value = FUNC2(client);

	FUNC5(&data->update_lock);

	if ((channel == 2 && input_mode == 2) ||
	    (channel != 3 && (input_mode == 1 || input_mode == 3)))
		return 10 * FUNC0(value);
	else
		return 10 * value;
}