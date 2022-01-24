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
struct dm_crypt_io {int /*<<< orphan*/  work; struct crypt_config* cc; } ;
struct crypt_config {int /*<<< orphan*/  io_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcryptd_io_read_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dm_crypt_io *io)
{
	struct crypt_config *cc = io->cc;

	FUNC0(&io->work, kcryptd_io_read_work);
	FUNC1(cc->io_queue, &io->work);
}