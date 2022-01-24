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
struct stripe_head {int dummy; } ;
struct ppl_log {struct ppl_conf* ppl_conf; } ;
struct ppl_io_unit {int /*<<< orphan*/  seq; struct page* header_page; int /*<<< orphan*/  biovec; int /*<<< orphan*/  bio; int /*<<< orphan*/  pending_flushes; int /*<<< orphan*/  pending_stripes; int /*<<< orphan*/  stripe_list; int /*<<< orphan*/  log_sibling; struct ppl_log* log; } ;
struct ppl_header {int /*<<< orphan*/  generation; int /*<<< orphan*/  signature; struct ppl_io_unit* reserved; } ;
struct ppl_conf {int /*<<< orphan*/  seq; int /*<<< orphan*/  signature; int /*<<< orphan*/  io_pool; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PPL_HDR_RESERVED ; 
 int /*<<< orphan*/  PPL_IO_INLINE_BVECS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ppl_header*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct ppl_io_unit* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ppl_io_unit*,int,int) ; 
 struct ppl_header* FUNC9 (struct page*) ; 

__attribute__((used)) static struct ppl_io_unit *FUNC10(struct ppl_log *log,
					  struct stripe_head *sh)
{
	struct ppl_conf *ppl_conf = log->ppl_conf;
	struct ppl_io_unit *io;
	struct ppl_header *pplhdr;
	struct page *header_page;

	io = FUNC7(&ppl_conf->io_pool, GFP_NOWAIT);
	if (!io)
		return NULL;

	header_page = io->header_page;
	FUNC8(io, 0, sizeof(*io));
	io->header_page = header_page;

	io->log = log;
	FUNC0(&io->log_sibling);
	FUNC0(&io->stripe_list);
	FUNC2(&io->pending_stripes, 0);
	FUNC2(&io->pending_flushes, 0);
	FUNC3(&io->bio, io->biovec, PPL_IO_INLINE_BVECS);

	pplhdr = FUNC9(io->header_page);
	FUNC4(pplhdr);
	FUNC8(pplhdr->reserved, 0xff, PPL_HDR_RESERVED);
	pplhdr->signature = FUNC5(ppl_conf->signature);

	io->seq = FUNC1(1, &ppl_conf->seq);
	pplhdr->generation = FUNC6(io->seq);

	return io;
}