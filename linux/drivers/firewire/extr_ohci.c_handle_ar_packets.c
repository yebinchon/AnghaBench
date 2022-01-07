
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_context {int dummy; } ;


 void* handle_ar_packet (struct ar_context*,void*) ;

__attribute__((used)) static void *handle_ar_packets(struct ar_context *ctx, void *p, void *end)
{
 void *next;

 while (p < end) {
  next = handle_ar_packet(ctx, p);
  if (!next)
   return p;
  p = next;
 }

 return p;
}
