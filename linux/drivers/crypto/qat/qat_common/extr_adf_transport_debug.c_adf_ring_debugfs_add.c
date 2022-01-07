
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adf_etr_ring_debug_entry {int debug; int ring_name; } ;
struct adf_etr_ring_data {int ring_number; struct adf_etr_ring_debug_entry* ring_debug; TYPE_1__* bank; } ;
typedef int entry_name ;
struct TYPE_2__ {int bank_debug_dir; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int S_IRUSR ;
 int adf_ring_debug_fops ;
 int debugfs_create_file (char*,int ,int ,struct adf_etr_ring_data*,int *) ;
 struct adf_etr_ring_debug_entry* kzalloc (int,int ) ;
 int snprintf (char*,int,char*,int) ;
 int strlcpy (int ,char const*,int) ;

int adf_ring_debugfs_add(struct adf_etr_ring_data *ring, const char *name)
{
 struct adf_etr_ring_debug_entry *ring_debug;
 char entry_name[8];

 ring_debug = kzalloc(sizeof(*ring_debug), GFP_KERNEL);
 if (!ring_debug)
  return -ENOMEM;

 strlcpy(ring_debug->ring_name, name, sizeof(ring_debug->ring_name));
 snprintf(entry_name, sizeof(entry_name), "ring_%02d",
   ring->ring_number);

 ring_debug->debug = debugfs_create_file(entry_name, S_IRUSR,
      ring->bank->bank_debug_dir,
      ring, &adf_ring_debug_fops);
 ring->ring_debug = ring_debug;
 return 0;
}
