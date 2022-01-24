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
struct intel_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  HDCP_2_2_DELAY_BEFORE_ENCRYPTION_EN ; 
 int FUNC1 (struct intel_connector*) ; 
 scalar_t__ FUNC2 (struct intel_connector*) ; 
 int FUNC3 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct intel_connector *connector)
{
	int ret, i, tries = 3;

	for (i = 0; i < tries; i++) {
		ret = FUNC1(connector);
		if (!ret)
			break;

		/* Clearing the mei hdcp session */
		FUNC0("HDCP2.2 Auth %d of %d Failed.(%d)\n",
			      i + 1, tries, ret);
		if (FUNC2(connector) < 0)
			FUNC0("Port deauth failed.\n");
	}

	if (i != tries) {
		/*
		 * Ensuring the required 200mSec min time interval between
		 * Session Key Exchange and encryption.
		 */
		FUNC4(HDCP_2_2_DELAY_BEFORE_ENCRYPTION_EN);
		ret = FUNC3(connector);
		if (ret < 0) {
			FUNC0("Encryption Enable Failed.(%d)\n", ret);
			if (FUNC2(connector) < 0)
				FUNC0("Port deauth failed.\n");
		}
	}

	return ret;
}