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
struct intel_guc_client {int dummy; } ;
struct intel_guc {struct intel_guc_client* execbuf_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_guc_client*) ; 
 int /*<<< orphan*/  GUC_CLIENT_PRIORITY_KMD_NORMAL ; 
 scalar_t__ FUNC2 (struct intel_guc_client*) ; 
 int FUNC3 (struct intel_guc_client*) ; 
 struct intel_guc_client* FUNC4 (struct intel_guc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct intel_guc *guc)
{
	struct intel_guc_client *client;

	FUNC1(guc->execbuf_client);

	client = FUNC4(guc, GUC_CLIENT_PRIORITY_KMD_NORMAL);
	if (FUNC2(client)) {
		FUNC0("Failed to create GuC client for submission!\n");
		return FUNC3(client);
	}
	guc->execbuf_client = client;

	return 0;
}