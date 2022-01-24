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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 void* FUNC1 (struct firmware const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (void const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,void const*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
			      const struct firmware *fw, u32 ck_id)
{
	const void *chunk;
	int error;

	chunk = FUNC1(fw, ck_id);
	if (!chunk) {
		FUNC0(&client->dev, "unable to locate chunk (type %d)\n",
			ck_id);
		return -EINVAL;
	}

	error = FUNC2(chunk, ck_id);
	if (error) {
		FUNC0(&client->dev, "invalid chunk (type %d): %d\n",
			ck_id, error);
		return error;
	}

	error = FUNC3(client, chunk);
	if (error) {
		FUNC0(&client->dev,
			"failed to write fw chunk (type %d): %d\n",
			ck_id, error);
		return error;
	}

	return 0;
}