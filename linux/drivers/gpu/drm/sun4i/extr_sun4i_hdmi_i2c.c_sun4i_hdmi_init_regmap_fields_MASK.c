#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sun4i_hdmi {void* field_ddc_sck_en; TYPE_1__* variant; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; void* field_ddc_sda_en; void* field_ddc_cmd; void* field_ddc_byte_count; void* field_ddc_fifo_tx_thres; void* field_ddc_fifo_rx_thres; void* field_ddc_fifo_clear; void* field_ddc_int_status; void* field_ddc_int_mask; void* field_ddc_slave_addr; void* field_ddc_addr_reg; void* field_ddc_reset; void* field_ddc_start; void* field_ddc_en; } ;
struct TYPE_2__ {int /*<<< orphan*/  field_ddc_sck_en; int /*<<< orphan*/  field_ddc_sda_en; int /*<<< orphan*/  field_ddc_cmd; int /*<<< orphan*/  field_ddc_byte_count; int /*<<< orphan*/  field_ddc_fifo_tx_thres; int /*<<< orphan*/  field_ddc_fifo_rx_thres; int /*<<< orphan*/  field_ddc_fifo_clear; int /*<<< orphan*/  field_ddc_int_status; int /*<<< orphan*/  field_ddc_int_mask; int /*<<< orphan*/  field_ddc_slave_addr; int /*<<< orphan*/  field_ddc_addr_reg; int /*<<< orphan*/  field_ddc_reset; int /*<<< orphan*/  field_ddc_start; int /*<<< orphan*/  field_ddc_en; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sun4i_hdmi *hdmi)
{
	hdmi->field_ddc_en =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_en);
	if (FUNC0(hdmi->field_ddc_en))
		return FUNC1(hdmi->field_ddc_en);

	hdmi->field_ddc_start =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_start);
	if (FUNC0(hdmi->field_ddc_start))
		return FUNC1(hdmi->field_ddc_start);

	hdmi->field_ddc_reset =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_reset);
	if (FUNC0(hdmi->field_ddc_reset))
		return FUNC1(hdmi->field_ddc_reset);

	hdmi->field_ddc_addr_reg =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_addr_reg);
	if (FUNC0(hdmi->field_ddc_addr_reg))
		return FUNC1(hdmi->field_ddc_addr_reg);

	hdmi->field_ddc_slave_addr =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_slave_addr);
	if (FUNC0(hdmi->field_ddc_slave_addr))
		return FUNC1(hdmi->field_ddc_slave_addr);

	hdmi->field_ddc_int_mask =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_int_mask);
	if (FUNC0(hdmi->field_ddc_int_mask))
		return FUNC1(hdmi->field_ddc_int_mask);

	hdmi->field_ddc_int_status =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_int_status);
	if (FUNC0(hdmi->field_ddc_int_status))
		return FUNC1(hdmi->field_ddc_int_status);

	hdmi->field_ddc_fifo_clear =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_fifo_clear);
	if (FUNC0(hdmi->field_ddc_fifo_clear))
		return FUNC1(hdmi->field_ddc_fifo_clear);

	hdmi->field_ddc_fifo_rx_thres =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_fifo_rx_thres);
	if (FUNC0(hdmi->field_ddc_fifo_rx_thres))
		return FUNC1(hdmi->field_ddc_fifo_rx_thres);

	hdmi->field_ddc_fifo_tx_thres =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_fifo_tx_thres);
	if (FUNC0(hdmi->field_ddc_fifo_tx_thres))
		return FUNC1(hdmi->field_ddc_fifo_tx_thres);

	hdmi->field_ddc_byte_count =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_byte_count);
	if (FUNC0(hdmi->field_ddc_byte_count))
		return FUNC1(hdmi->field_ddc_byte_count);

	hdmi->field_ddc_cmd =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_cmd);
	if (FUNC0(hdmi->field_ddc_cmd))
		return FUNC1(hdmi->field_ddc_cmd);

	hdmi->field_ddc_sda_en =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_sda_en);
	if (FUNC0(hdmi->field_ddc_sda_en))
		return FUNC1(hdmi->field_ddc_sda_en);

	hdmi->field_ddc_sck_en =
		FUNC2(hdmi->dev, hdmi->regmap,
					hdmi->variant->field_ddc_sck_en);
	if (FUNC0(hdmi->field_ddc_sck_en))
		return FUNC1(hdmi->field_ddc_sck_en);

	return 0;
}