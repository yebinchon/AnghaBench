
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _minor_idr ;
 int _minor_lock ;
 int idr_remove (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void free_minor(int minor)
{
 spin_lock(&_minor_lock);
 idr_remove(&_minor_idr, minor);
 spin_unlock(&_minor_lock);
}
