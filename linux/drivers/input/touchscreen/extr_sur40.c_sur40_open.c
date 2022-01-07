
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sur40_state {int dev; } ;
struct input_polled_dev {struct sur40_state* private; } ;


 int dev_dbg (int ,char*) ;
 int sur40_init (struct sur40_state*) ;

__attribute__((used)) static void sur40_open(struct input_polled_dev *polldev)
{
 struct sur40_state *sur40 = polldev->private;

 dev_dbg(sur40->dev, "open\n");
 sur40_init(sur40);
}
