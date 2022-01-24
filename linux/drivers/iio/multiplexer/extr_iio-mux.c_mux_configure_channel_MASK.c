#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct mux_child {TYPE_5__* ext_info_cache; } ;
struct mux {TYPE_1__* ext_info; TYPE_2__* parent; int /*<<< orphan*/  control; struct iio_chan_spec* chan; struct mux_child* child; } ;
struct iio_chan_spec {int indexed; char const* datasheet_name; TYPE_1__* ext_info; scalar_t__ channel; int /*<<< orphan*/  info_mask_separate_available; int /*<<< orphan*/  info_mask_separate; int /*<<< orphan*/  type; int /*<<< orphan*/  output; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int size; scalar_t__* data; } ;
struct TYPE_7__ {struct iio_chan_spec* channel; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  read; int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IIO_CHAN_INFO_RAW ; 
 int /*<<< orphan*/  IIO_CHAN_INFO_SCALE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 TYPE_5__* FUNC2 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 scalar_t__* FUNC4 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct iio_chan_spec const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct iio_chan_spec const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct device *dev, struct mux *mux,
				 u32 state, const char *label, int idx)
{
	struct mux_child *child = &mux->child[idx];
	struct iio_chan_spec *chan = &mux->chan[idx];
	struct iio_chan_spec const *pchan = mux->parent->channel;
	char *page = NULL;
	int num_ext_info;
	int i;
	int ret;

	chan->indexed = 1;
	chan->output = pchan->output;
	chan->datasheet_name = label;
	chan->ext_info = mux->ext_info;

	ret = FUNC9(mux->parent, &chan->type);
	if (ret < 0) {
		FUNC1(dev, "failed to get parent channel type\n");
		return ret;
	}

	if (FUNC7(pchan, IIO_CHAN_INFO_RAW))
		chan->info_mask_separate |= FUNC0(IIO_CHAN_INFO_RAW);
	if (FUNC7(pchan, IIO_CHAN_INFO_SCALE))
		chan->info_mask_separate |= FUNC0(IIO_CHAN_INFO_SCALE);

	if (FUNC6(pchan, IIO_CHAN_INFO_RAW))
		chan->info_mask_separate_available |= FUNC0(IIO_CHAN_INFO_RAW);

	if (state >= FUNC11(mux->control)) {
		FUNC1(dev, "too many channels\n");
		return -EINVAL;
	}

	chan->channel = state;

	num_ext_info = FUNC8(mux->parent);
	if (num_ext_info) {
		page = FUNC5(dev, PAGE_SIZE, GFP_KERNEL);
		if (!page)
			return -ENOMEM;
	}
	child->ext_info_cache = FUNC2(dev,
					     num_ext_info,
					     sizeof(*child->ext_info_cache),
					     GFP_KERNEL);
	if (!child->ext_info_cache)
		return -ENOMEM;

	for (i = 0; i < num_ext_info; ++i) {
		child->ext_info_cache[i].size = -1;

		if (!pchan->ext_info[i].write)
			continue;
		if (!pchan->ext_info[i].read)
			continue;

		ret = FUNC10(mux->parent,
						mux->ext_info[i].name,
						page);
		if (ret < 0) {
			FUNC1(dev, "failed to get ext_info '%s'\n",
				pchan->ext_info[i].name);
			return ret;
		}
		if (ret >= PAGE_SIZE) {
			FUNC1(dev, "too large ext_info '%s'\n",
				pchan->ext_info[i].name);
			return -EINVAL;
		}

		child->ext_info_cache[i].data = FUNC4(dev, page, ret + 1,
							     GFP_KERNEL);
		if (!child->ext_info_cache[i].data)
			return -ENOMEM;

		child->ext_info_cache[i].data[ret] = 0;
		child->ext_info_cache[i].size = ret;
	}

	if (page)
		FUNC3(dev, page);

	return 0;
}