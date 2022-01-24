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
typedef  int u16 ;
struct ms5611_state {int /*<<< orphan*/  client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ MS5611_READ_PROM_WORD ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct ms5611_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev, int index, u16 *word)
{
	int ret;
	struct ms5611_state *st = FUNC1(FUNC0(dev));

	ret = FUNC2(st->client, MS5611_READ_PROM_WORD + (index << 1));
	if (ret < 0)
		return ret;

	*word = ret;

	return 0;
}