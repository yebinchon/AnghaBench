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
 int /*<<< orphan*/  CLIENT_REGISTERED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  clients ; 
 int /*<<< orphan*/  clients_rwsem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  highest_client_id ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ib_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ib_client *client)
{
	int ret;

	FUNC0(&clients_rwsem);
	/*
	 * The add/remove callbacks must be called in FIFO/LIFO order. To
	 * achieve this we assign client_ids so they are sorted in
	 * registration order.
	 */
	client->client_id = highest_client_id;
	ret = FUNC2(&clients, client->client_id, client, GFP_KERNEL);
	if (ret)
		goto out;

	highest_client_id++;
	FUNC3(&clients, client->client_id, CLIENT_REGISTERED);

out:
	FUNC1(&clients_rwsem);
	return ret;
}