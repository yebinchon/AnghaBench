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
typedef  int /*<<< orphan*/  u64 ;
struct dm_crypt_request {int /*<<< orphan*/  iv_sector; } ;
struct crypt_config {int iv_size; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct crypt_config *cc, u8 *iv,
				  struct dm_crypt_request *dmreq)
{
	FUNC1(iv, 0, cc->iv_size);
	/* iv_size is at least of size u64; usually it is 16 bytes */
	*(__be64 *)&iv[cc->iv_size - sizeof(u64)] = FUNC0(dmreq->iv_sector);

	return 0;
}