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
struct ahash_request {int dummy; } ;
typedef  struct ahash_request u8 ;
struct dm_verity {int data_dev_block_bits; void* zero_digest; int /*<<< orphan*/  ahash_reqsize; int /*<<< orphan*/  digest_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ahash_request*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ahash_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dm_verity*,struct ahash_request*,struct ahash_request*,int,void*) ; 

__attribute__((used)) static int FUNC4(struct dm_verity *v)
{
	int r = -ENOMEM;
	struct ahash_request *req;
	u8 *zero_data;

	v->zero_digest = FUNC1(v->digest_size, GFP_KERNEL);

	if (!v->zero_digest)
		return r;

	req = FUNC1(v->ahash_reqsize, GFP_KERNEL);

	if (!req)
		return r; /* verity_dtr will free zero_digest */

	zero_data = FUNC2(1 << v->data_dev_block_bits, GFP_KERNEL);

	if (!zero_data)
		goto out;

	r = FUNC3(v, req, zero_data, 1 << v->data_dev_block_bits,
			v->zero_digest);

out:
	FUNC0(req);
	FUNC0(zero_data);

	return r;
}