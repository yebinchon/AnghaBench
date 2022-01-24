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
struct smsdvb_client_t {int /*<<< orphan*/  smsclient; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,size_t) ; 
 scalar_t__ FUNC2 (struct completion*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct smsdvb_client_t *client,
					void *buffer, size_t size,
					struct completion *completion)
{
	int rc;

	rc = FUNC1(client->smsclient, buffer, size);
	if (rc < 0)
		return rc;

	return FUNC2(completion,
					   FUNC0(2000)) ?
						0 : -ETIME;
}