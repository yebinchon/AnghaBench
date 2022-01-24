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
struct smscore_device_t {int (* sendrequest_handler ) (int /*<<< orphan*/ ,void*,size_t) ;int /*<<< orphan*/  context; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIME ; 
 int /*<<< orphan*/  SMS_PROTOCOL_MAX_RAOUNDTRIP_MS ; 
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,size_t) ; 
 scalar_t__ FUNC4 (struct completion*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct smscore_device_t *coredev,
		void *buffer, size_t size, struct completion *completion) {
	int rc;

	if (!completion)
		return -EINVAL;
	FUNC0(completion);

	rc = coredev->sendrequest_handler(coredev->context, buffer, size);
	if (rc < 0) {
		FUNC2("sendrequest returned error %d\n", rc);
		return rc;
	}

	return FUNC4(completion,
			FUNC1(SMS_PROTOCOL_MAX_RAOUNDTRIP_MS)) ?
			0 : -ETIME;
}