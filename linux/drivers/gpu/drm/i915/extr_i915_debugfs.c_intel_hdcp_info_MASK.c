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
struct intel_connector {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct intel_connector*) ; 
 int FUNC1 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m,
			    struct intel_connector *intel_connector)
{
	bool hdcp_cap, hdcp2_cap;

	hdcp_cap = FUNC1(intel_connector);
	hdcp2_cap = FUNC0(intel_connector);

	if (hdcp_cap)
		FUNC2(m, "HDCP1.4 ");
	if (hdcp2_cap)
		FUNC2(m, "HDCP2.2 ");

	if (!hdcp_cap && !hdcp2_cap)
		FUNC2(m, "None");

	FUNC2(m, "\n");
}