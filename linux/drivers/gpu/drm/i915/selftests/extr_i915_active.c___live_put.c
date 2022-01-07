
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct live_active {int ref; } ;


 int __live_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void __live_put(struct live_active *active)
{
 kref_put(&active->ref, __live_release);
}
