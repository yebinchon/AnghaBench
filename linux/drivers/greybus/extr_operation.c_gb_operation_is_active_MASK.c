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
struct gb_operation {int active; struct gb_connection* connection; } ;
struct gb_connection {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC2(struct gb_operation *operation)
{
	struct gb_connection *connection = operation->connection;
	unsigned long flags;
	bool ret;

	FUNC0(&connection->lock, flags);
	ret = operation->active;
	FUNC1(&connection->lock, flags);

	return ret;
}