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
struct dm_io_client {int /*<<< orphan*/  pool; int /*<<< orphan*/  bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIOSET_NEED_BVECS ; 
 int ENOMEM ; 
 struct dm_io_client* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  _dm_io_cache ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dm_io_client*) ; 
 struct dm_io_client* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

struct dm_io_client *FUNC7(void)
{
	struct dm_io_client *client;
	unsigned min_ios = FUNC2();
	int ret;

	client = FUNC4(sizeof(*client), GFP_KERNEL);
	if (!client)
		return FUNC0(-ENOMEM);

	ret = FUNC6(&client->pool, min_ios, _dm_io_cache);
	if (ret)
		goto bad;

	ret = FUNC1(&client->bios, min_ios, 0, BIOSET_NEED_BVECS);
	if (ret)
		goto bad;

	return client;

   bad:
	FUNC5(&client->pool);
	FUNC3(client);
	return FUNC0(ret);
}