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
typedef  int uint8_t ;
struct dc_link_settings {int dummy; } ;
struct dc_link {int dummy; } ;

/* Variables and functions */
 int LINK_TRAINING_RETRY_DELAY ; 
 scalar_t__ LINK_TRAINING_SUCCESS ; 
 scalar_t__ FUNC0 (struct dc_link*,struct dc_link_settings const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

bool FUNC2(
	struct dc_link *link,
	const struct dc_link_settings *link_setting,
	bool skip_video_pattern,
	int attempts)
{
	uint8_t j;
	uint8_t delay_between_attempts = LINK_TRAINING_RETRY_DELAY;

	for (j = 0; j < attempts; ++j) {

		if (FUNC0(
				link,
				link_setting,
				skip_video_pattern) == LINK_TRAINING_SUCCESS)
			return true;

		FUNC1(delay_between_attempts);
		delay_between_attempts += LINK_TRAINING_RETRY_DELAY;
	}

	return false;
}