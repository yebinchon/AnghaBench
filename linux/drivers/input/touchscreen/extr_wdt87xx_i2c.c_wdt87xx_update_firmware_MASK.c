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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*) ; 
 int FUNC2 (struct firmware const**,char const*,struct device*) ; 
 struct i2c_client* FUNC3 (struct device*) ; 
 int FUNC4 (struct i2c_client*,struct firmware const*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
				   const char *fw_name, unsigned int chunk_id)
{
	struct i2c_client *client = FUNC3(dev);
	const struct firmware *fw;
	int error;

	error = FUNC2(&fw, fw_name, dev);
	if (error) {
		FUNC0(&client->dev, "unable to retrieve firmware %s: %d\n",
			fw_name, error);
		return error;
	}

	error = FUNC4(client, fw, chunk_id);

	FUNC1(fw);

	return error ? error : 0;
}