
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_state {int dummy; } ;


 int kfree (struct pasid_state*) ;

__attribute__((used)) static void free_pasid_state(struct pasid_state *pasid_state)
{
 kfree(pasid_state);
}
