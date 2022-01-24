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
typedef  int /*<<< orphan*/  uint32_t ;
struct dce_audio {int dummy; } ;
struct audio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AZALIA_ENDPOINT_REG_INDEX ; 
 int /*<<< orphan*/  AZALIA_F0_CODEC_ENDPOINT_DATA ; 
 int /*<<< orphan*/  AZALIA_F0_CODEC_ENDPOINT_INDEX ; 
 struct dce_audio* FUNC0 (struct audio*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC4(struct audio *audio, uint32_t reg_index)
{
	struct dce_audio *aud = FUNC0(audio);

	uint32_t value = 0;

	/* AZALIA_F0_CODEC_ENDPOINT_INDEX  endpoint index  */
	FUNC3(AZALIA_F0_CODEC_ENDPOINT_INDEX, 0,
			AZALIA_ENDPOINT_REG_INDEX, reg_index);

	/* AZALIA_F0_CODEC_ENDPOINT_DATA  endpoint data  */
	value = FUNC2(AZALIA_F0_CODEC_ENDPOINT_DATA);

	FUNC1("AUDIO:read_indirect_azalia_reg: index: %u  data: %u\n",
		reg_index, value);

	return value;
}