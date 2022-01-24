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
typedef  int /*<<< orphan*/  u8 ;
struct mma8452_data {int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  MMA8452_OUT_X ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mma8452_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct mma8452_data *data, __be16 buf[3])
{
	int ret = FUNC1(data);

	if (ret < 0)
		return ret;

	ret = FUNC2(data->client, true);
	if (ret)
		return ret;

	ret = FUNC0(data->client, MMA8452_OUT_X,
					    3 * sizeof(__be16), (u8 *)buf);

	ret = FUNC2(data->client, false);

	return ret;
}