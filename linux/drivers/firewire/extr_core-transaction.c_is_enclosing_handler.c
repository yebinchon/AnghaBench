
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_address_handler {unsigned long long offset; unsigned long long length; } ;



__attribute__((used)) static bool is_enclosing_handler(struct fw_address_handler *handler,
     unsigned long long offset, size_t length)
{
 return handler->offset <= offset &&
  offset + length <= handler->offset + handler->length;
}
