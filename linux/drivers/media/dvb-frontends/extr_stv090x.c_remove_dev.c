
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv090x_internal {int i2c_addr; int i2c_adap; } ;
struct stv090x_dev {struct stv090x_dev* next_dev; } ;


 struct stv090x_dev* find_dev (int ,int ) ;
 int kfree (struct stv090x_dev*) ;
 struct stv090x_dev* stv090x_first_dev ;

__attribute__((used)) static void remove_dev(struct stv090x_internal *internal)
{
 struct stv090x_dev *prev_dev = stv090x_first_dev;
 struct stv090x_dev *del_dev = find_dev(internal->i2c_adap,
      internal->i2c_addr);

 if (del_dev != ((void*)0)) {
  if (del_dev == stv090x_first_dev) {
   stv090x_first_dev = del_dev->next_dev;
  } else {
   while (prev_dev->next_dev != del_dev)
    prev_dev = prev_dev->next_dev;

   prev_dev->next_dev = del_dev->next_dev;
  }

  kfree(del_dev);
 }
}
