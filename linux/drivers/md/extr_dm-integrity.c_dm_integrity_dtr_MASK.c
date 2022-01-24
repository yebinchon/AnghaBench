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
struct skcipher_request {int /*<<< orphan*/  iv; } ;
struct dm_target {struct dm_integrity_c* private; } ;
struct dm_integrity_c {unsigned int journal_sections; int /*<<< orphan*/  journal_mac_alg; scalar_t__ journal_mac; int /*<<< orphan*/  journal_crypt_alg; scalar_t__ journal_crypt; int /*<<< orphan*/  internal_hash_alg; scalar_t__ internal_hash; scalar_t__ sb; struct skcipher_request** journal_tree; struct skcipher_request** sk_requests; scalar_t__ journal_io_scatterlist; scalar_t__ journal_scatterlist; int /*<<< orphan*/  may_write_bitmap; int /*<<< orphan*/  recalc_bitmap; int /*<<< orphan*/  journal_xor; int /*<<< orphan*/  journal_io; int /*<<< orphan*/  journal; scalar_t__ meta_dev; scalar_t__ dev; scalar_t__ io; int /*<<< orphan*/  journal_io_mempool; scalar_t__ bufio; struct skcipher_request** bbs; struct skcipher_request** recalc_tags; int /*<<< orphan*/  recalc_buffer; scalar_t__ recalc_wq; scalar_t__ writer_wq; scalar_t__ commit_wq; scalar_t__ wait_wq; scalar_t__ metadata_wq; int /*<<< orphan*/  wait_list; int /*<<< orphan*/  in_progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SB_SECTORS ; 
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_integrity_c*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_target*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_integrity_c*) ; 
 int /*<<< orphan*/  FUNC13 (struct skcipher_request**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct dm_target *ti)
{
	struct dm_integrity_c *ic = ti->private;

	FUNC0(!FUNC1(&ic->in_progress));
	FUNC0(!FUNC15(&ic->wait_list));

	if (ic->metadata_wq)
		FUNC4(ic->metadata_wq);
	if (ic->wait_wq)
		FUNC4(ic->wait_wq);
	if (ic->commit_wq)
		FUNC4(ic->commit_wq);
	if (ic->writer_wq)
		FUNC4(ic->writer_wq);
	if (ic->recalc_wq)
		FUNC4(ic->recalc_wq);
	FUNC18(ic->recalc_buffer);
	FUNC13(ic->recalc_tags);
	FUNC13(ic->bbs);
	if (ic->bufio)
		FUNC5(ic->bufio);
	FUNC16(&ic->journal_io_mempool);
	if (ic->io)
		FUNC8(ic->io);
	if (ic->dev)
		FUNC9(ti, ic->dev);
	if (ic->meta_dev)
		FUNC9(ti, ic->meta_dev);
	FUNC7(ic->journal);
	FUNC7(ic->journal_io);
	FUNC7(ic->journal_xor);
	FUNC7(ic->recalc_bitmap);
	FUNC7(ic->may_write_bitmap);
	if (ic->journal_scatterlist)
		FUNC6(ic, ic->journal_scatterlist);
	if (ic->journal_io_scatterlist)
		FUNC6(ic, ic->journal_io_scatterlist);
	if (ic->sk_requests) {
		unsigned i;

		for (i = 0; i < ic->journal_sections; i++) {
			struct skcipher_request *req = ic->sk_requests[i];
			if (req) {
				FUNC14(req->iv);
				FUNC17(req);
			}
		}
		FUNC13(ic->sk_requests);
	}
	FUNC13(ic->journal_tree);
	if (ic->sb)
		FUNC11(ic->sb, SB_SECTORS << SECTOR_SHIFT);

	if (ic->internal_hash)
		FUNC2(ic->internal_hash);
	FUNC10(&ic->internal_hash_alg);

	if (ic->journal_crypt)
		FUNC3(ic->journal_crypt);
	FUNC10(&ic->journal_crypt_alg);

	if (ic->journal_mac)
		FUNC2(ic->journal_mac);
	FUNC10(&ic->journal_mac_alg);

	FUNC12(ic);
}