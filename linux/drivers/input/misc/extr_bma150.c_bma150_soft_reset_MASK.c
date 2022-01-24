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
struct bma150_data {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMA150_SW_RES_MSK ; 
 int /*<<< orphan*/  BMA150_SW_RES_POS ; 
 int /*<<< orphan*/  BMA150_SW_RES_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct bma150_data *bma150)
{
	int error;

	error = FUNC0(bma150->client, 1, BMA150_SW_RES_POS,
				BMA150_SW_RES_MSK, BMA150_SW_RES_REG);
	if (error)
		return error;

	FUNC1(2000, 2100);
	return 0;
}