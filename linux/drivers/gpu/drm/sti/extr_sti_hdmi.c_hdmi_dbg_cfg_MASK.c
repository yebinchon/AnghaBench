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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int HDMI_CFG_422_EN ; 
 int HDMI_CFG_ESS_NOT_OESS ; 
 int HDMI_CFG_HDCP_EN ; 
 int HDMI_CFG_HDMI_NOT_DVI ; 
 int HDMI_CFG_H_SYNC_POL_NEG ; 
 int HDMI_CFG_V_SYNC_POL_NEG ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *s, int val)
{
	int tmp;

	FUNC1(s, '\t');
	tmp = val & HDMI_CFG_HDMI_NOT_DVI;
	FUNC0("mode:", tmp ? "HDMI" : "DVI");
	FUNC2(s, "\t\t\t\t\t");
	tmp = val & HDMI_CFG_HDCP_EN;
	FUNC0("HDCP:", tmp ? "enable" : "disable");
	FUNC2(s, "\t\t\t\t\t");
	tmp = val & HDMI_CFG_ESS_NOT_OESS;
	FUNC0("HDCP mode:", tmp ? "ESS enable" : "OESS enable");
	FUNC2(s, "\t\t\t\t\t");
	tmp = val & HDMI_CFG_H_SYNC_POL_NEG;
	FUNC0("Hsync polarity:", tmp ? "inverted" : "normal");
	FUNC2(s, "\t\t\t\t\t");
	tmp = val & HDMI_CFG_V_SYNC_POL_NEG;
	FUNC0("Vsync polarity:", tmp ? "inverted" : "normal");
	FUNC2(s, "\t\t\t\t\t");
	tmp = val & HDMI_CFG_422_EN;
	FUNC0("YUV422 format:", tmp ? "enable" : "disable");
}