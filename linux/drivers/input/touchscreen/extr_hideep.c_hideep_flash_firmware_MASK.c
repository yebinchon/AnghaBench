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
struct hideep_ts {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (struct hideep_ts*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC1 (struct hideep_ts*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC2(struct hideep_ts *ts,
				 const __be32 *ucode, size_t ucode_len)
{
	int retry_cnt = 3;
	int error;

	while (retry_cnt--) {
		error = FUNC0(ts, ucode, ucode_len);
		if (!error) {
			error = FUNC1(ts, ucode, ucode_len);
			if (!error)
				return 0;
		}
	}

	return error;
}