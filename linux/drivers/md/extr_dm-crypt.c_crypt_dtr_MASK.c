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
struct dm_target {struct crypt_config* private; } ;
struct crypt_config {int /*<<< orphan*/  bio_alloc_lock; struct crypt_config* authenc_key; struct crypt_config* cipher_auth; struct crypt_config* key_string; struct crypt_config* cipher_string; scalar_t__ dev; TYPE_1__* iv_gen_ops; int /*<<< orphan*/  n_allocated_pages; int /*<<< orphan*/  tag_pool; int /*<<< orphan*/  req_pool; int /*<<< orphan*/  page_pool; int /*<<< orphan*/  bs; scalar_t__ crypt_queue; scalar_t__ io_queue; scalar_t__ write_thread; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dtr ) (struct crypt_config*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  dm_crypt_clients_lock ; 
 int /*<<< orphan*/  dm_crypt_clients_n ; 
 int /*<<< orphan*/  FUNC5 (struct dm_target*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct crypt_config*) ; 

__attribute__((used)) static void FUNC15(struct dm_target *ti)
{
	struct crypt_config *cc = ti->private;

	ti->private = NULL;

	if (!cc)
		return;

	if (cc->write_thread)
		FUNC6(cc->write_thread);

	if (cc->io_queue)
		FUNC4(cc->io_queue);
	if (cc->crypt_queue)
		FUNC4(cc->crypt_queue);

	FUNC3(cc);

	FUNC1(&cc->bs);

	FUNC8(&cc->page_pool);
	FUNC8(&cc->req_pool);
	FUNC8(&cc->tag_pool);

	FUNC0(FUNC11(&cc->n_allocated_pages) != 0);
	FUNC10(&cc->n_allocated_pages);

	if (cc->iv_gen_ops && cc->iv_gen_ops->dtr)
		cc->iv_gen_ops->dtr(cc);

	if (cc->dev)
		FUNC5(ti, cc->dev);

	FUNC7(cc->cipher_string);
	FUNC7(cc->key_string);
	FUNC7(cc->cipher_auth);
	FUNC7(cc->authenc_key);

	FUNC9(&cc->bio_alloc_lock);

	/* Must zero key material before freeing */
	FUNC7(cc);

	FUNC12(&dm_crypt_clients_lock);
	FUNC0(!dm_crypt_clients_n);
	dm_crypt_clients_n--;
	FUNC2();
	FUNC13(&dm_crypt_clients_lock);
}