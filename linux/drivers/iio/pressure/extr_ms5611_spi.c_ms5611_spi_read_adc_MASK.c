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
struct ms5611_state {int /*<<< orphan*/  client; } ;
struct device {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int MS5611_READ_ADC ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct ms5611_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int,int*,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev, s32 *val)
{
	int ret;
	u8 buf[3] = { MS5611_READ_ADC };
	struct ms5611_state *st = FUNC1(FUNC0(dev));

	ret = FUNC2(st->client, buf, 1, buf, 3);
	if (ret < 0)
		return ret;

	*val = (buf[0] << 16) | (buf[1] << 8) | buf[2];

	return 0;
}