
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_entry {int dummy; } ;


 int __context_present (struct context_entry*) ;
 int context_copied (struct context_entry*) ;
 scalar_t__ context_pasid_enabled (struct context_entry*) ;

bool context_present(struct context_entry *context)
{
 return context_pasid_enabled(context) ?
      __context_present(context) :
      __context_present(context) && !context_copied(context);
}
