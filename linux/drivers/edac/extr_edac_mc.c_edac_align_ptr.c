void *edac_align_ptr(void **p, unsigned int size, int n_elems)
{
 unsigned int align, r;
 void *ptr = *p;

 *p += size * n_elems;
 if (size > sizeof(long))
  align = sizeof(long long);
 else if (size > sizeof(int))
  align = sizeof(long);
 else if (size > sizeof(short))
  align = sizeof(int);
 else if (size > sizeof(char))
  align = sizeof(short);
 else
  return (char *)ptr;

 r = (unsigned long)p % align;

 if (r == 0)
  return (char *)ptr;

 *p += align - r;

 return (void *)(((unsigned long)ptr) + align - r);
}
