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
struct ib_client {int /*<<< orphan*/  client_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  clients ; 
 int /*<<< orphan*/  clients_rwsem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ highest_client_id ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ib_client *client)
{
	FUNC0(&clients_rwsem);
	FUNC2(&clients, client->client_id);
	for (; highest_client_id; highest_client_id--)
		if (FUNC3(&clients, highest_client_id - 1))
			break;
	FUNC1(&clients_rwsem);
}