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
struct gb_svc {int /*<<< orphan*/  connection; int /*<<< orphan*/  wq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_svc*) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_svc*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_svc*) ; 

void FUNC8(struct gb_svc *svc)
{
	FUNC4(svc->connection);

	/*
	 * The SVC device may have been registered from the request handler.
	 */
	if (FUNC1(&svc->dev)) {
		FUNC5(svc);
		FUNC7(svc);
		FUNC0(&svc->dev);
	}

	FUNC2(svc->wq);

	FUNC6(svc);

	FUNC3(svc->connection);
}