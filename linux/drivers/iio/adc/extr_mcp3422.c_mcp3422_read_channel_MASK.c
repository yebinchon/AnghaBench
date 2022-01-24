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
typedef  size_t u8 ;
struct mcp3422 {size_t config; int /*<<< orphan*/ * pga; } ;
struct iio_chan_spec {size_t channel; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t MCP3422_CHANNEL_MASK ; 
 size_t FUNC1 (size_t) ; 
 size_t MCP3422_PGA_MASK ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (size_t) ; 
 int FUNC4 (struct mcp3422*,int*,size_t*) ; 
 int /*<<< orphan*/ * mcp3422_read_times ; 
 int FUNC5 (struct mcp3422*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mcp3422 *adc,
				struct iio_chan_spec const *channel, int *value)
{
	int ret;
	u8 config;
	u8 req_channel = channel->channel;

	if (req_channel != FUNC0(adc->config)) {
		config = adc->config;
		config &= ~MCP3422_CHANNEL_MASK;
		config |= FUNC1(req_channel);
		config &= ~MCP3422_PGA_MASK;
		config |= FUNC2(adc->pga[req_channel]);
		ret = FUNC5(adc, config);
		if (ret < 0)
			return ret;
		FUNC6(mcp3422_read_times[FUNC3(adc->config)]);
	}

	return FUNC4(adc, value, &config);
}