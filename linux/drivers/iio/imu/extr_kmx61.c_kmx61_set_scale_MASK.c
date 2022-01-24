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
typedef  scalar_t__ u16 ;
struct kmx61_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int KMX61_ACC ; 
 int /*<<< orphan*/  KMX61_ALL_STBY ; 
 int KMX61_MAG ; 
 int FUNC1 (struct kmx61_data*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct kmx61_data*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct kmx61_data*,int) ; 
 scalar_t__* kmx61_uscale_table ; 

__attribute__((used)) static int FUNC4(struct kmx61_data *data, u16 uscale)
{
	int ret, i;
	u8  mode;

	for (i = 0; i < FUNC0(kmx61_uscale_table); i++) {
		if (kmx61_uscale_table[i] == uscale) {
			ret = FUNC1(data, &mode,
					     KMX61_ACC | KMX61_MAG);
			if (ret < 0)
				return ret;

			ret = FUNC2(data, KMX61_ALL_STBY,
					     KMX61_ACC | KMX61_MAG, true);
			if (ret < 0)
				return ret;

			ret = FUNC3(data, i);
			if (ret < 0)
				return ret;

			return  FUNC2(data, mode,
					       KMX61_ACC | KMX61_MAG, true);
		}
	}
	return -EINVAL;
}