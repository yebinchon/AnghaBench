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
struct mlx90632_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx90632_data*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mlx90632_data *data,
				     s16 *ambient_new_raw, s16 *ambient_old_raw,
				     s16 *object_new_raw, s16 *object_old_raw)
{
	s32 ret, measurement;

	FUNC3(&data->lock);
	measurement = FUNC0(data);
	if (measurement < 0) {
		ret = measurement;
		goto read_unlock;
	}
	ret = FUNC1(data->regmap, ambient_new_raw,
					ambient_old_raw);
	if (ret < 0)
		goto read_unlock;

	ret = FUNC2(data->regmap, measurement,
				       object_new_raw, object_old_raw);
read_unlock:
	FUNC4(&data->lock);
	return ret;
}