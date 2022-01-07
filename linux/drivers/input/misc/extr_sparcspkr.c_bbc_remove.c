
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bbc_beep_info {int regs; } ;
struct TYPE_2__ {struct bbc_beep_info bbc; } ;
struct sparcspkr_state {int (* event ) (struct input_dev*,int ,int ,int ) ;TYPE_1__ u; struct input_dev* input_dev; } ;
struct platform_device {int * resource; } ;
struct input_dev {int dummy; } ;


 int EV_SND ;
 int SND_BELL ;
 int input_unregister_device (struct input_dev*) ;
 int kfree (struct sparcspkr_state*) ;
 int of_iounmap (int *,int ,int) ;
 struct sparcspkr_state* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct input_dev*,int ,int ,int ) ;

__attribute__((used)) static int bbc_remove(struct platform_device *op)
{
 struct sparcspkr_state *state = platform_get_drvdata(op);
 struct input_dev *input_dev = state->input_dev;
 struct bbc_beep_info *info = &state->u.bbc;


 state->event(input_dev, EV_SND, SND_BELL, 0);

 input_unregister_device(input_dev);

 of_iounmap(&op->resource[0], info->regs, 6);

 kfree(state);

 return 0;
}
