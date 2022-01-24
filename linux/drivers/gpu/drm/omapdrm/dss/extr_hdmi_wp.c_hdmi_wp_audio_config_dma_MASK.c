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
typedef  int /*<<< orphan*/  u32 ;
struct hdmi_wp_data {int /*<<< orphan*/  base; } ;
struct hdmi_audio_dma {int /*<<< orphan*/  fifo_threshold; int /*<<< orphan*/  mode; int /*<<< orphan*/  block_size; int /*<<< orphan*/  transfer_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  HDMI_WP_AUDIO_CFG2 ; 
 int /*<<< orphan*/  HDMI_WP_AUDIO_CTRL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct hdmi_wp_data *wp,
		struct hdmi_audio_dma *aud_dma)
{
	u32 r;

	FUNC0("Enter hdmi_wp_audio_config_dma\n");

	r = FUNC2(wp->base, HDMI_WP_AUDIO_CFG2);
	r = FUNC1(r, aud_dma->transfer_size, 15, 8);
	r = FUNC1(r, aud_dma->block_size, 7, 0);
	FUNC3(wp->base, HDMI_WP_AUDIO_CFG2, r);

	r = FUNC2(wp->base, HDMI_WP_AUDIO_CTRL);
	r = FUNC1(r, aud_dma->mode, 9, 9);
	r = FUNC1(r, aud_dma->fifo_threshold, 8, 0);
	FUNC3(wp->base, HDMI_WP_AUDIO_CTRL, r);
}