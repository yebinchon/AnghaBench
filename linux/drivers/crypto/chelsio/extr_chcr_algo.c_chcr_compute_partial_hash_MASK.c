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
struct shash_desc {int dummy; } ;
struct sha512_state {int /*<<< orphan*/  state; } ;
struct sha256_state {int /*<<< orphan*/  state; } ;
struct sha1_state {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SHA1_BLOCK_SIZE ; 
 int SHA1_DIGEST_SIZE ; 
 int SHA224_DIGEST_SIZE ; 
 int /*<<< orphan*/  SHA256_BLOCK_SIZE ; 
 int SHA256_DIGEST_SIZE ; 
 int SHA384_DIGEST_SIZE ; 
 int /*<<< orphan*/  SHA512_BLOCK_SIZE ; 
 int SHA512_DIGEST_SIZE ; 
 int FUNC0 (struct shash_desc*,void*) ; 
 scalar_t__ FUNC1 (struct shash_desc*) ; 
 scalar_t__ FUNC2 (struct shash_desc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct shash_desc *desc,
				     char *iopad, char *result_hash,
				     int digest_size)
{
	struct sha1_state sha1_st;
	struct sha256_state sha256_st;
	struct sha512_state sha512_st;
	int error;

	if (digest_size == SHA1_DIGEST_SIZE) {
		error = FUNC1(desc) ?:
			FUNC2(desc, iopad, SHA1_BLOCK_SIZE) ?:
			FUNC0(desc, (void *)&sha1_st);
		FUNC3(result_hash, sha1_st.state, SHA1_DIGEST_SIZE);
	} else if (digest_size == SHA224_DIGEST_SIZE) {
		error = FUNC1(desc) ?:
			FUNC2(desc, iopad, SHA256_BLOCK_SIZE) ?:
			FUNC0(desc, (void *)&sha256_st);
		FUNC3(result_hash, sha256_st.state, SHA256_DIGEST_SIZE);

	} else if (digest_size == SHA256_DIGEST_SIZE) {
		error = FUNC1(desc) ?:
			FUNC2(desc, iopad, SHA256_BLOCK_SIZE) ?:
			FUNC0(desc, (void *)&sha256_st);
		FUNC3(result_hash, sha256_st.state, SHA256_DIGEST_SIZE);

	} else if (digest_size == SHA384_DIGEST_SIZE) {
		error = FUNC1(desc) ?:
			FUNC2(desc, iopad, SHA512_BLOCK_SIZE) ?:
			FUNC0(desc, (void *)&sha512_st);
		FUNC3(result_hash, sha512_st.state, SHA512_DIGEST_SIZE);

	} else if (digest_size == SHA512_DIGEST_SIZE) {
		error = FUNC1(desc) ?:
			FUNC2(desc, iopad, SHA512_BLOCK_SIZE) ?:
			FUNC0(desc, (void *)&sha512_st);
		FUNC3(result_hash, sha512_st.state, SHA512_DIGEST_SIZE);
	} else {
		error = -EINVAL;
		FUNC4("Unknown digest size %d\n", digest_size);
	}
	return error;
}