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
struct iram_table_v_2_2 {int flags; int* iir_curve; void** crgb_slope; void** crgb_offset; void** crgb_thresh; int /*<<< orphan*/ ** dark_pos_gain; int /*<<< orphan*/ ** bright_pos_gain; int /*<<< orphan*/ ** max_reduction; int /*<<< orphan*/ ** min_reduction; int /*<<< orphan*/ * max_knee; int /*<<< orphan*/ * min_knee; int /*<<< orphan*/ * deviation_gain; int /*<<< orphan*/ * contrast_factor; int /*<<< orphan*/ * hybrid_factor; } ;
struct dmcu_iram_parameters {unsigned int set; } ;
struct TYPE_2__ {int /*<<< orphan*/  dark_pos_gain; int /*<<< orphan*/  bright_pos_gain; int /*<<< orphan*/  max_reduction; int /*<<< orphan*/  min_reduction; int /*<<< orphan*/  max_knee; int /*<<< orphan*/  min_knee; int /*<<< orphan*/  deviation_gain; int /*<<< orphan*/  contrast_factor; int /*<<< orphan*/  brightness_gain; } ;

/* Variables and functions */
 unsigned int NUM_AGGR_LEVEL ; 
 unsigned int NUM_AMBI_LEVEL ; 
 TYPE_1__** abm_settings ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dmcu_iram_parameters,struct iram_table_v_2_2*) ; 

void FUNC2(struct iram_table_v_2_2 *ram_table, struct dmcu_iram_parameters params)
{
	unsigned int i, j;
	unsigned int set = params.set;

	ram_table->flags = 0x0;
	for (i = 0; i < NUM_AGGR_LEVEL; i++) {
		ram_table->hybrid_factor[i] = abm_settings[set][i].brightness_gain;
		ram_table->contrast_factor[i] = abm_settings[set][i].contrast_factor;
		ram_table->deviation_gain[i] = abm_settings[set][i].deviation_gain;
		ram_table->min_knee[i] = abm_settings[set][i].min_knee;
		ram_table->max_knee[i] = abm_settings[set][i].max_knee;

		for (j = 0; j < NUM_AMBI_LEVEL; j++) {
			ram_table->min_reduction[j][i] = abm_settings[set][i].min_reduction;
			ram_table->max_reduction[j][i] = abm_settings[set][i].max_reduction;
			ram_table->bright_pos_gain[j][i] = abm_settings[set][i].bright_pos_gain;
			ram_table->dark_pos_gain[j][i] = abm_settings[set][i].dark_pos_gain;
		}
	}

	ram_table->iir_curve[0] = 0x65;
	ram_table->iir_curve[1] = 0x65;
	ram_table->iir_curve[2] = 0x65;
	ram_table->iir_curve[3] = 0x65;
	ram_table->iir_curve[4] = 0x65;

	//Gamma 2.2
	ram_table->crgb_thresh[0] = FUNC0(0x127c);
	ram_table->crgb_thresh[1] = FUNC0(0x151b);
	ram_table->crgb_thresh[2] = FUNC0(0x17d5);
	ram_table->crgb_thresh[3] = FUNC0(0x1a56);
	ram_table->crgb_thresh[4] = FUNC0(0x1c83);
	ram_table->crgb_thresh[5] = FUNC0(0x1e72);
	ram_table->crgb_thresh[6] = FUNC0(0x20f0);
	ram_table->crgb_thresh[7] = FUNC0(0x232b);
	ram_table->crgb_offset[0] = FUNC0(0x2999);
	ram_table->crgb_offset[1] = FUNC0(0x3999);
	ram_table->crgb_offset[2] = FUNC0(0x4666);
	ram_table->crgb_offset[3] = FUNC0(0x5999);
	ram_table->crgb_offset[4] = FUNC0(0x6333);
	ram_table->crgb_offset[5] = FUNC0(0x7800);
	ram_table->crgb_offset[6] = FUNC0(0x8c00);
	ram_table->crgb_offset[7] = FUNC0(0xa000);
	ram_table->crgb_slope[0]  = FUNC0(0x3609);
	ram_table->crgb_slope[1]  = FUNC0(0x2dfa);
	ram_table->crgb_slope[2]  = FUNC0(0x27ea);
	ram_table->crgb_slope[3]  = FUNC0(0x235d);
	ram_table->crgb_slope[4]  = FUNC0(0x2042);
	ram_table->crgb_slope[5]  = FUNC0(0x1dc3);
	ram_table->crgb_slope[6]  = FUNC0(0x1b1a);
	ram_table->crgb_slope[7]  = FUNC0(0x1910);

	FUNC1(
			params, ram_table);
}