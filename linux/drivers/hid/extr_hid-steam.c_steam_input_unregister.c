
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct steam_device {int input; } ;
struct input_dev {int dummy; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int input_unregister_device (struct input_dev*) ;
 struct input_dev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int synchronize_rcu () ;

__attribute__((used)) static void steam_input_unregister(struct steam_device *steam)
{
 struct input_dev *input;
 rcu_read_lock();
 input = rcu_dereference(steam->input);
 rcu_read_unlock();
 if (!input)
  return;
 RCU_INIT_POINTER(steam->input, ((void*)0));
 synchronize_rcu();
 input_unregister_device(input);
}
