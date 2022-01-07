
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int pin_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void mock_timeline_pin(struct intel_timeline *tl)
{
 atomic_inc(&tl->pin_count);
}
