#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct sp2 {TYPE_1__ ca; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct sp2* FUNC2 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct sp2 *s;

	FUNC0(&client->dev, "\n");

	if (!client)
		return 0;

	s = FUNC2(client);
	if (!s)
		return 0;

	if (!s->ca.data)
		return 0;

	FUNC1(&s->ca);

	return 0;
}