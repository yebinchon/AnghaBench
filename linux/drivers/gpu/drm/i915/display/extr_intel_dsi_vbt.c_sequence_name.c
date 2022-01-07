
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mipi_seq { ____Placeholder_mipi_seq } mipi_seq ;


 int ARRAY_SIZE (char const**) ;
 char const** seq_name ;

__attribute__((used)) static const char *sequence_name(enum mipi_seq seq_id)
{
 if (seq_id < ARRAY_SIZE(seq_name) && seq_name[seq_id])
  return seq_name[seq_id];
 else
  return "(unknown)";
}
