
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_write (struct seq_file*,char const*,size_t) ;

__attribute__((used)) static inline void write_to_seqfile(void *ctx, const char *str, size_t len,
        bool cont)
{
 seq_write((struct seq_file *)ctx, str, len);
}
