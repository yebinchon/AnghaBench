
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv090x_internal {int dummy; } ;
struct stv090x_dev {struct stv090x_dev* next_dev; struct stv090x_internal* internal; } ;


 int GFP_KERNEL ;
 struct stv090x_dev* kmalloc (int,int ) ;
 struct stv090x_dev* stv090x_first_dev ;

__attribute__((used)) static struct stv090x_dev *append_internal(struct stv090x_internal *internal)
{
 struct stv090x_dev *new_dev;
 struct stv090x_dev *temp_dev;

 new_dev = kmalloc(sizeof(struct stv090x_dev), GFP_KERNEL);
 if (new_dev != ((void*)0)) {
  new_dev->internal = internal;
  new_dev->next_dev = ((void*)0);


  if (stv090x_first_dev == ((void*)0)) {
   stv090x_first_dev = new_dev;
  } else {
   temp_dev = stv090x_first_dev;
   while (temp_dev->next_dev != ((void*)0))
    temp_dev = temp_dev->next_dev;

   temp_dev->next_dev = new_dev;
  }
 }

 return new_dev;
}
