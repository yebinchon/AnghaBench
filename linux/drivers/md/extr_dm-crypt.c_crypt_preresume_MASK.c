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
struct dm_target {struct crypt_config* private; } ;
struct crypt_config {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DM_CRYPT_KEY_VALID ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct dm_target *ti)
{
	struct crypt_config *cc = ti->private;

	if (!FUNC1(DM_CRYPT_KEY_VALID, &cc->flags)) {
		FUNC0("aborting resume - crypt key is not set.");
		return -EAGAIN;
	}

	return 0;
}