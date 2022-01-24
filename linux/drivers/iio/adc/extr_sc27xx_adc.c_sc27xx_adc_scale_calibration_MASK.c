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
typedef  int u32 ;
struct sc27xx_adc_linear_graph {void* adc1; void* adc0; } ;
struct sc27xx_adc_data {int /*<<< orphan*/  dev; } ;
typedef  void nvmem_cell ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 struct sc27xx_adc_linear_graph big_scale_graph ; 
 struct sc27xx_adc_linear_graph big_scale_graph_calib ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (void*,size_t*) ; 
 void* FUNC8 (int,void*) ; 
 struct sc27xx_adc_linear_graph small_scale_graph ; 
 struct sc27xx_adc_linear_graph small_scale_graph_calib ; 

__attribute__((used)) static int FUNC9(struct sc27xx_adc_data *data,
					bool big_scale)
{
	const struct sc27xx_adc_linear_graph *calib_graph;
	struct sc27xx_adc_linear_graph *graph;
	struct nvmem_cell *cell;
	const char *cell_name;
	u32 calib_data = 0;
	void *buf;
	size_t len;

	if (big_scale) {
		calib_graph = &big_scale_graph_calib;
		graph = &big_scale_graph;
		cell_name = "big_scale_calib";
	} else {
		calib_graph = &small_scale_graph_calib;
		graph = &small_scale_graph;
		cell_name = "small_scale_calib";
	}

	cell = FUNC5(data->dev, cell_name);
	if (FUNC0(cell))
		return FUNC1(cell);

	buf = FUNC7(cell, &len);
	FUNC6(cell);

	if (FUNC0(buf))
		return FUNC1(buf);

	FUNC3(&calib_data, buf, FUNC4(len, sizeof(u32)));

	/* Only need to calibrate the adc values in the linear graph. */
	graph->adc0 = FUNC8(calib_data, calib_graph->adc0);
	graph->adc1 = FUNC8(calib_data >> 8,
						calib_graph->adc1);

	FUNC2(buf);
	return 0;
}