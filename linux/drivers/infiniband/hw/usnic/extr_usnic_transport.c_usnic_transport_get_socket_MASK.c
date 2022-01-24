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
struct socket {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct socket* FUNC0 (int /*<<< orphan*/ ) ; 
 struct socket* FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct socket*) ; 

struct socket *FUNC5(int sock_fd)
{
	struct socket *sock;
	int err;
	char buf[25];

	/* sockfd_lookup will internally do a fget */
	sock = FUNC1(sock_fd, &err);
	if (!sock) {
		FUNC3("Unable to lookup socket for fd %d with err %d\n",
				sock_fd, err);
		return FUNC0(-ENOENT);
	}

	FUNC4(buf, sizeof(buf), sock);
	FUNC2("Get sock %s\n", buf);

	return sock;
}