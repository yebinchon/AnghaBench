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
struct TYPE_2__ {int /*<<< orphan*/  dma_data; } ;
struct vc4_hdmi {TYPE_1__ audio; } ;
struct snd_soc_dai {int dummy; } ;

/* Variables and functions */
 struct vc4_hdmi* FUNC0 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai)
{
	struct vc4_hdmi *hdmi = FUNC0(dai);

	FUNC1(dai, &hdmi->audio.dma_data, NULL);

	return 0;
}