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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct crypto_sync_skcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct crypto_sync_skcipher*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scatterlist*,struct scatterlist*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct crypto_sync_skcipher*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  subreq ; 

__attribute__((used)) static int FUNC7(struct crypto_sync_skcipher *cipher,
				u32 flags,
				struct scatterlist *src,
				struct scatterlist *dst,
				unsigned int nbytes,
				u8 *iv,
				unsigned short op_type)
{
	int err;

	FUNC0(subreq, cipher);

	FUNC5(subreq, cipher);
	FUNC3(subreq, flags, NULL, NULL);
	FUNC4(subreq, src, dst,
				   nbytes, iv);

	err = op_type ? FUNC1(subreq) :
		FUNC2(subreq);
	FUNC6(subreq);

	return err;

}