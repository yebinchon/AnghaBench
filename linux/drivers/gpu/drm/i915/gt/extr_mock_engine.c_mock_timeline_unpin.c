
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int pin_count; } ;


 int GEM_BUG_ON (int) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;

__attribute__((used)) static void mock_timeline_unpin(struct intel_timeline *tl)
{
 GEM_BUG_ON(!atomic_read(&tl->pin_count));
 atomic_dec(&tl->pin_count);
}
