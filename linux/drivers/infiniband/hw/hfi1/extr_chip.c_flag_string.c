
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct flag_table {int flag; char* str; } ;
typedef int extra ;


 int append_str (char*,char**,int*,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *flag_string(char *buf, int buf_len, u64 flags,
    struct flag_table *table, int table_size)
{
 char extra[32];
 char *p = buf;
 int len = buf_len;
 int no_room = 0;
 int i;


 if (len < 2)
  return "";

 len--;
 for (i = 0; i < table_size; i++) {
  if (flags & table[i].flag) {
   no_room = append_str(buf, &p, &len, table[i].str);
   if (no_room)
    break;
   flags &= ~table[i].flag;
  }
 }


 if (!no_room && flags) {
  snprintf(extra, sizeof(extra), "bits 0x%llx", flags);
  no_room = append_str(buf, &p, &len, extra);
 }


 if (no_room) {

  if (len == 0)
   --p;
  *p++ = '*';
 }


 *p = 0;
 return buf;
}
