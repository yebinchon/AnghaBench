#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nv_device_v0 {unsigned long long device; } ;
struct TYPE_2__ {int /*<<< orphan*/  object; } ;
struct nouveau_cli {struct nouveau_abi16* abi16; TYPE_1__ base; } ;
struct nouveau_abi16 {int /*<<< orphan*/  device; int /*<<< orphan*/  channels; } ;
struct drm_file {int dummy; } ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NV_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_abi16*) ; 
 struct nouveau_abi16* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct nouveau_cli* FUNC3 (struct drm_file*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nv_device_v0*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nouveau_abi16 *
FUNC5(struct drm_file *file_priv)
{
	struct nouveau_cli *cli = FUNC3(file_priv);
	if (!cli->abi16) {
		struct nouveau_abi16 *abi16;
		cli->abi16 = abi16 = FUNC2(sizeof(*abi16), GFP_KERNEL);
		if (cli->abi16) {
			struct nv_device_v0 args = {
				.device = ~0ULL,
			};

			FUNC0(&abi16->channels);

			/* allocate device object targeting client's default
			 * device (ie. the one that belongs to the fd it
			 * opened)
			 */
			if (FUNC4(&cli->base.object, 0, NV_DEVICE,
					     &args, sizeof(args),
					     &abi16->device) == 0)
				return cli->abi16;

			FUNC1(cli->abi16);
			cli->abi16 = NULL;
		}
	}
	return cli->abi16;
}