
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int request_module (char*,char const*) ;

__attribute__((used)) static void load_module(const char *name)
{
 request_module("dm-%s", name);
}
