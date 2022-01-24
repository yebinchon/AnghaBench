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
struct us5182d_data {int /*<<< orphan*/  client; int /*<<< orphan*/ * us5182d_dark_ths; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ US5182D_REG_UDARK_TH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct us5182d_data *data, int index)
{
	__be16 dark_th = FUNC0(data->us5182d_dark_ths[index]);
	int ret;

	ret = FUNC1(data->client, US5182D_REG_UDARK_TH,
					((u8 *)&dark_th)[0]);
	if (ret < 0)
		return ret;

	return FUNC1(data->client, US5182D_REG_UDARK_TH + 1,
					((u8 *)&dark_th)[1]);
}