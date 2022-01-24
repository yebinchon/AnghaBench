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
struct nouveau_cli {int /*<<< orphan*/  mutex; struct nouveau_abi16* abi16; } ;
struct nouveau_abi16 {int dummy; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct drm_file*) ; 
 struct nouveau_cli* FUNC3 (struct drm_file*) ; 

struct nouveau_abi16 *
FUNC4(struct drm_file *file_priv)
{
	struct nouveau_cli *cli = FUNC3(file_priv);
	FUNC0(&cli->mutex);
	if (FUNC2(file_priv))
		return cli->abi16;
	FUNC1(&cli->mutex);
	return NULL;
}