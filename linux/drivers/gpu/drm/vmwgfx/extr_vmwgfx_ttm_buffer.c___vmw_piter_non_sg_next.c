
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_piter {scalar_t__ i; scalar_t__ num_pages; } ;



__attribute__((used)) static bool __vmw_piter_non_sg_next(struct vmw_piter *viter)
{
 return ++(viter->i) < viter->num_pages;
}
