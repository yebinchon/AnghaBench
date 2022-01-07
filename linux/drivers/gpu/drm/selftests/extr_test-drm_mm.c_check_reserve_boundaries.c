
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct boundary TYPE_1__ ;


typedef unsigned int u64 ;
struct drm_mm_node {int dummy; } ;
struct drm_mm {int dummy; } ;
struct boundary {unsigned int start; unsigned int size; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__ const*) ;
 TYPE_1__ const B (unsigned int,int) ;
 int expect_reserve_fail (struct drm_mm*,int ) ;
 int pr_err (char*,int,char const*,unsigned int,unsigned int) ;
 int set_node (struct drm_mm_node*,unsigned int,unsigned int) ;

__attribute__((used)) static bool check_reserve_boundaries(struct drm_mm *mm,
         unsigned int count,
         u64 size)
{
 const struct boundary {
  u64 start, size;
  const char *name;
 } boundaries[] = {

  { (0), (0), "{ " "0" ", " "0" "}" },
  { (-size), (0), "{ " "-size" ", " "0" "}" },
  { (size), (0), "{ " "size" ", " "0" "}" },
  { (size * count), (0), "{ " "size * count" ", " "0" "}" },
  { (-size), (size), "{ " "-size" ", " "size" "}" },
  { (-size), (-size), "{ " "-size" ", " "-size" "}" },
  { (-size), (2*size), "{ " "-size" ", " "2*size" "}" },
  { (0), (-size), "{ " "0" ", " "-size" "}" },
  { (size), (-size), "{ " "size" ", " "-size" "}" },
  { (count*size), (size), "{ " "count*size" ", " "size" "}" },
  { (count*size), (-size), "{ " "count*size" ", " "-size" "}" },
  { (count*size), (count*size), "{ " "count*size" ", " "count*size" "}" },
  { (count*size), (-count*size), "{ " "count*size" ", " "-count*size" "}" },
  { (count*size), (-(count+1)*size), "{ " "count*size" ", " "-(count+1)*size" "}" },
  { ((count+1)*size), (size), "{ " "(count+1)*size" ", " "size" "}" },
  { ((count+1)*size), (-size), "{ " "(count+1)*size" ", " "-size" "}" },
  { ((count+1)*size), (-2*size), "{ " "(count+1)*size" ", " "-2*size" "}" },

 };
 struct drm_mm_node tmp = {};
 int n;

 for (n = 0; n < ARRAY_SIZE(boundaries); n++) {
  if (!expect_reserve_fail(mm,
      set_node(&tmp,
        boundaries[n].start,
        boundaries[n].size))) {
   pr_err("boundary[%d:%s] failed, count=%u, size=%lld\n",
          n, boundaries[n].name, count, size);
   return 0;
  }
 }

 return 1;
}
