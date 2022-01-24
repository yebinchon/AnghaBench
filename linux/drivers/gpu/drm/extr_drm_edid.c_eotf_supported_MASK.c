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
typedef  int const uint8_t ;
typedef  int u8 ;

/* Variables and functions */
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI_EOTF_BT_2100_HLG ; 
 int /*<<< orphan*/  HDMI_EOTF_SMPTE_ST2084 ; 
 int /*<<< orphan*/  HDMI_EOTF_TRADITIONAL_GAMMA_HDR ; 
 int /*<<< orphan*/  HDMI_EOTF_TRADITIONAL_GAMMA_SDR ; 

__attribute__((used)) static uint8_t FUNC1(const u8 *edid_ext)
{
	return edid_ext[2] &
		(FUNC0(HDMI_EOTF_TRADITIONAL_GAMMA_SDR) |
		 FUNC0(HDMI_EOTF_TRADITIONAL_GAMMA_HDR) |
		 FUNC0(HDMI_EOTF_SMPTE_ST2084) |
		 FUNC0(HDMI_EOTF_BT_2100_HLG));
}