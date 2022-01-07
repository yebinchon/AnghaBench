
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int loff_t ;


 int memconsole_baseaddr ;
 int memconsole_length ;
 int memory_read_from_buffer (char*,size_t,int *,int ,int ) ;

__attribute__((used)) static ssize_t memconsole_read(char *buf, loff_t pos, size_t count)
{
 return memory_read_from_buffer(buf, count, &pos, memconsole_baseaddr,
           memconsole_length);
}
