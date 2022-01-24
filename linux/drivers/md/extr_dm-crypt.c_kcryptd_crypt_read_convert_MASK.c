#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cc_pending; } ;
struct dm_crypt_io {TYPE_1__ ctx; scalar_t__ error; int /*<<< orphan*/  sector; int /*<<< orphan*/  base_bio; struct crypt_config* cc; } ;
struct crypt_config {int dummy; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct crypt_config*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypt_config*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_crypt_io*) ; 

__attribute__((used)) static void FUNC6(struct dm_crypt_io *io)
{
	struct crypt_config *cc = io->cc;
	blk_status_t r;

	FUNC4(io);

	FUNC2(cc, &io->ctx, io->base_bio, io->base_bio,
			   io->sector);

	r = FUNC1(cc, &io->ctx);
	if (r)
		io->error = r;

	if (FUNC0(&io->ctx.cc_pending))
		FUNC5(io);

	FUNC3(io);
}