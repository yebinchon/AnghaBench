
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int hydration_batch_size; } ;


 int WRITE_ONCE (int ,unsigned int) ;

__attribute__((used)) static void set_hydration_batch_size(struct clone *clone, unsigned int nr_regions)
{
 WRITE_ONCE(clone->hydration_batch_size, nr_regions);
}
