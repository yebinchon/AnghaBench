
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int hydration_threshold; } ;


 int WRITE_ONCE (int ,unsigned int) ;
 int wake_worker (struct clone*) ;

__attribute__((used)) static void set_hydration_threshold(struct clone *clone, unsigned int nr_regions)
{
 WRITE_ONCE(clone->hydration_threshold, nr_regions);






 wake_worker(clone);
}
