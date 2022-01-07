
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_iso_context {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int dummy_flush_iso_completions(struct fw_iso_context *ctx)
{
 return -ENODEV;
}
