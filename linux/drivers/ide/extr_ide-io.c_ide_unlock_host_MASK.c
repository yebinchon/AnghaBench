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
struct ide_host {int host_flags; int /*<<< orphan*/  host_busy; int /*<<< orphan*/  (* release_lock ) () ;} ;

/* Variables and functions */
 int IDE_HFLAG_SERIALIZE ; 
 int /*<<< orphan*/  IDE_HOST_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct ide_host *host)
{
	if (host->host_flags & IDE_HFLAG_SERIALIZE) {
		if (host->release_lock)
			host->release_lock();
		FUNC0(IDE_HOST_BUSY, &host->host_busy);
	}
}