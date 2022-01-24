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
struct dm_crypt_request {int iv_sector; } ;
struct crypt_config {int /*<<< orphan*/  iv_size; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct crypt_config *cc, u8 *iv,
			      struct dm_crypt_request *dmreq)
{
	FUNC1(iv, 0, cc->iv_size);
	*(__le32 *)iv = FUNC0(dmreq->iv_sector & 0xffffffff);

	return 0;
}