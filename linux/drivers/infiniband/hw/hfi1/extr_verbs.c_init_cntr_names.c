
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kmalloc (int,int ) ;
 int memcpy (char*,char const*,size_t const) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int init_cntr_names(const char *names_in,
      const size_t names_len,
      int num_extra_names,
      int *num_cntrs,
      const char ***cntr_names)
{
 char *names_out, *p, **q;
 int i, n;

 n = 0;
 for (i = 0; i < names_len; i++)
  if (names_in[i] == '\n')
   n++;

 names_out = kmalloc((n + num_extra_names) * sizeof(char *) + names_len,
       GFP_KERNEL);
 if (!names_out) {
  *num_cntrs = 0;
  *cntr_names = ((void*)0);
  return -ENOMEM;
 }

 p = names_out + (n + num_extra_names) * sizeof(char *);
 memcpy(p, names_in, names_len);

 q = (char **)names_out;
 for (i = 0; i < n; i++) {
  q[i] = p;
  p = strchr(p, '\n');
  *p++ = '\0';
 }

 *num_cntrs = n;
 *cntr_names = (const char **)names_out;
 return 0;
}
