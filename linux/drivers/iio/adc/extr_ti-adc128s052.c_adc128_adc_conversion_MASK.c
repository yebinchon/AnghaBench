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
struct adc128 {int* buffer; int /*<<< orphan*/  lock; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int**,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int**,int) ; 

__attribute__((used)) static int FUNC4(struct adc128 *adc, u8 channel)
{
	int ret;

	FUNC0(&adc->lock);

	adc->buffer[0] = channel << 3;
	adc->buffer[1] = 0;

	ret = FUNC3(adc->spi, &adc->buffer, 2);
	if (ret < 0) {
		FUNC1(&adc->lock);
		return ret;
	}

	ret = FUNC2(adc->spi, &adc->buffer, 2);

	FUNC1(&adc->lock);

	if (ret < 0)
		return ret;

	return ((adc->buffer[0] << 8 | adc->buffer[1]) & 0xFFF);
}