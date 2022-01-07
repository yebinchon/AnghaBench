
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** mem_err_type_strs ;

const char *cper_mem_err_type_str(unsigned int etype)
{
 return etype < ARRAY_SIZE(mem_err_type_strs) ?
  mem_err_type_strs[etype] : "unknown";
}
