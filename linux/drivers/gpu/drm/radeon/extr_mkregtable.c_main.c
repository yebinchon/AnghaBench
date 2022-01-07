
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int dummy; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ parser_auth (struct table*,char*) ;
 int stderr ;
 int table_init (struct table*) ;
 int table_print (struct table*) ;

int main(int argc, char *argv[])
{
 struct table t;

 if (argc != 2) {
  fprintf(stderr, "Usage: %s <authfile>\n", argv[0]);
  exit(1);
 }
 table_init(&t);
 if (parser_auth(&t, argv[1])) {
  fprintf(stderr, "Failed to parse file %s\n", argv[1]);
  return -1;
 }
 table_print(&t);
 return 0;
}
