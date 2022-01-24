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
typedef  int /*<<< orphan*/  u8 ;
struct stmfts_data {int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct stmfts_data *sdata, const u8 cmd)
{
	int err;

	FUNC2(&sdata->cmd_done);

	err = FUNC0(sdata->client, cmd);
	if (err)
		return err;

	if (!FUNC3(&sdata->cmd_done,
					 FUNC1(1000)))
		return -ETIMEDOUT;

	return 0;
}