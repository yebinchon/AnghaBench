
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparcspkr_state {int (* event ) (struct input_dev*,int ,int ,int ) ;struct input_dev* input_dev; } ;
struct platform_device {int dummy; } ;
struct input_dev {int dummy; } ;


 int EV_SND ;
 int SND_BELL ;
 struct sparcspkr_state* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct input_dev*,int ,int ,int ) ;

__attribute__((used)) static void sparcspkr_shutdown(struct platform_device *dev)
{
 struct sparcspkr_state *state = platform_get_drvdata(dev);
 struct input_dev *input_dev = state->input_dev;


 state->event(input_dev, EV_SND, SND_BELL, 0);
}
