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
struct dm_verity {struct dm_verity* signature_key_desc; scalar_t__ data_dev; scalar_t__ hash_dev; struct dm_verity* alg_name; scalar_t__ tfm; struct dm_verity* zero_digest; struct dm_verity* root_digest; struct dm_verity* salt; int /*<<< orphan*/  validated_blocks; scalar_t__ bufio; scalar_t__ verify_wq; } ;
struct dm_target {struct dm_verity* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_target*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_verity*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_verity*) ; 

__attribute__((used)) static void FUNC7(struct dm_target *ti)
{
	struct dm_verity *v = ti->private;

	if (v->verify_wq)
		FUNC1(v->verify_wq);

	if (v->bufio)
		FUNC2(v->bufio);

	FUNC5(v->validated_blocks);
	FUNC4(v->salt);
	FUNC4(v->root_digest);
	FUNC4(v->zero_digest);

	if (v->tfm)
		FUNC0(v->tfm);

	FUNC4(v->alg_name);

	if (v->hash_dev)
		FUNC3(ti, v->hash_dev);

	if (v->data_dev)
		FUNC3(ti, v->data_dev);

	FUNC6(v);

	FUNC4(v->signature_key_desc);

	FUNC4(v);
}