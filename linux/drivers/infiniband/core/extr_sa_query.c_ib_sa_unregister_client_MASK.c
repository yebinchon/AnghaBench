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
struct ib_sa_client {int /*<<< orphan*/  comp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_sa_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ib_sa_client *client)
{
	FUNC0(client);
	FUNC1(&client->comp);
}