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
typedef  int u8 ;
struct mv_cesa_ahash_req {int len; scalar_t__ algo_le; } ;
typedef  int /*<<< orphan*/  bits ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (struct mv_cesa_ahash_req*) ; 

__attribute__((used)) static int FUNC5(struct mv_cesa_ahash_req *creq, u8 *buf)
{
	unsigned int padlen;

	buf[0] = 0x80;
	/* Pad out to 56 mod 64 */
	padlen = FUNC4(creq);
	FUNC3(buf + 1, 0, padlen - 1);

	if (creq->algo_le) {
		__le64 bits = FUNC1(creq->len << 3);
		FUNC2(buf + padlen, &bits, sizeof(bits));
	} else {
		__be64 bits = FUNC0(creq->len << 3);
		FUNC2(buf + padlen, &bits, sizeof(bits));
	}

	return padlen + 8;
}