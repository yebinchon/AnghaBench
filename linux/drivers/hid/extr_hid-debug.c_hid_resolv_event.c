
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef size_t __u8 ;
typedef size_t __u16 ;


 char** events ;
 char*** names ;
 int seq_printf (struct seq_file*,char*,char*,char*) ;

__attribute__((used)) static void hid_resolv_event(__u8 type, __u16 code, struct seq_file *f)
{
 seq_printf(f, "%s.%s", events[type] ? events[type] : "?",
  names[type] ? (names[type][code] ? names[type][code] : "?") : "?");
}
