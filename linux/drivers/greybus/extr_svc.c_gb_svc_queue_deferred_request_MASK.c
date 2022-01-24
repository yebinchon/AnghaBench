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
struct gb_svc_deferred_request {int /*<<< orphan*/  work; struct gb_operation* operation; } ;
struct gb_svc {int /*<<< orphan*/  wq; } ;
struct gb_operation {int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct gb_svc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_operation*) ; 
 int /*<<< orphan*/  gb_svc_process_deferred_request ; 
 struct gb_svc_deferred_request* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gb_operation *operation)
{
	struct gb_svc *svc = FUNC1(operation->connection);
	struct gb_svc_deferred_request *dr;

	dr = FUNC3(sizeof(*dr), GFP_KERNEL);
	if (!dr)
		return -ENOMEM;

	FUNC2(operation);

	dr->operation = operation;
	FUNC0(&dr->work, gb_svc_process_deferred_request);

	FUNC4(svc->wq, &dr->work);

	return 0;
}