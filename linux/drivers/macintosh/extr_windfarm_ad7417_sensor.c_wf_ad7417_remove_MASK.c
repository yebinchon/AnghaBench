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
struct wf_ad7417_priv {int /*<<< orphan*/  ref; int /*<<< orphan*/ * sensors; int /*<<< orphan*/ * i2c; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct wf_ad7417_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wf_ad7417_release ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct wf_ad7417_priv *pv = FUNC0(&client->dev);
	int i;

	/* Mark client detached */
	pv->i2c = NULL;

	/* Release sensor */
	for (i = 0; i < 5; i++)
		FUNC2(&pv->sensors[i]);

	FUNC1(&pv->ref, wf_ad7417_release);

	return 0;
}