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
struct kxtj9_data {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  WHO_AM_I ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kxtj9_data*) ; 
 int FUNC3 (struct kxtj9_data*) ; 

__attribute__((used)) static int FUNC4(struct kxtj9_data *tj9)
{
	int retval;

	retval = FUNC3(tj9);
	if (retval < 0)
		return retval;

	retval = FUNC1(tj9->client, WHO_AM_I);
	if (retval < 0) {
		FUNC0(&tj9->client->dev, "read err int source\n");
		goto out;
	}

	retval = (retval != 0x07 && retval != 0x08) ? -EIO : 0;

out:
	FUNC2(tj9);
	return retval;
}