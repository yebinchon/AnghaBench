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
struct sbefifo {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (struct sbefifo*,struct iov_iter*) ; 
 int FUNC1 (struct sbefifo*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC2(struct sbefifo *sbefifo,
			      const __be32 *command, size_t cmd_len,
			      struct iov_iter *response)
{
	/* Try sending the command */
	int rc = FUNC1(sbefifo, command, cmd_len);
	if (rc)
		return rc;

	/* Now, get the response */
	return FUNC0(sbefifo, response);
}