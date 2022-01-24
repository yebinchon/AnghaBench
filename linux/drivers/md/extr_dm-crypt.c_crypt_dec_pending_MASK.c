#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  req; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct dm_crypt_io {int /*<<< orphan*/  integrity_metadata; struct crypt_config* cc; int /*<<< orphan*/  integrity_metadata_from_pool; TYPE_2__ ctx; int /*<<< orphan*/  io_pending; int /*<<< orphan*/  error; struct bio* base_bio; } ;
struct crypt_config {int /*<<< orphan*/  tag_pool; } ;
struct bio {int /*<<< orphan*/  bi_status; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypt_config*,int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dm_crypt_io *io)
{
	struct crypt_config *cc = io->cc;
	struct bio *base_bio = io->base_bio;
	blk_status_t error = io->error;

	if (!FUNC0(&io->io_pending))
		return;

	if (io->ctx.r.req)
		FUNC2(cc, io->ctx.r.req, base_bio);

	if (FUNC5(io->integrity_metadata_from_pool))
		FUNC4(io->integrity_metadata, &io->cc->tag_pool);
	else
		FUNC3(io->integrity_metadata);

	base_bio->bi_status = error;
	FUNC1(base_bio);
}