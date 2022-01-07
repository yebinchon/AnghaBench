
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct live_active {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void __live_get(struct live_active *active)
{
 kref_get(&active->ref);
}
