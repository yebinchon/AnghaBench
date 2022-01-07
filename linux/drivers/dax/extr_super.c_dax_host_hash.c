
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DAX_HASH_SIZE ;
 int hashlen_hash (int ) ;
 int hashlen_string (char*,char const*) ;

__attribute__((used)) static int dax_host_hash(const char *host)
{
 return hashlen_hash(hashlen_string("DAX", host)) % DAX_HASH_SIZE;
}
