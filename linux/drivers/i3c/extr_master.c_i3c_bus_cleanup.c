
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_bus {int id; } ;


 int i3c_bus_idr ;
 int i3c_core_lock ;
 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void i3c_bus_cleanup(struct i3c_bus *i3cbus)
{
 mutex_lock(&i3c_core_lock);
 idr_remove(&i3c_bus_idr, i3cbus->id);
 mutex_unlock(&i3c_core_lock);
}
