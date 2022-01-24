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
struct drm_connector {int* latency_present; scalar_t__* audio_latency; scalar_t__* video_latency; int /*<<< orphan*/  eld; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct drm_connector *connector)
{
	FUNC0(connector->eld, 0, sizeof(connector->eld));

	connector->latency_present[0] = false;
	connector->latency_present[1] = false;
	connector->video_latency[0] = 0;
	connector->audio_latency[0] = 0;
	connector->video_latency[1] = 0;
	connector->audio_latency[1] = 0;
}