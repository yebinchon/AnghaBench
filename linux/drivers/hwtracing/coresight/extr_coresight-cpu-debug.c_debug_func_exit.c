
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_notifier_chain_unregister (int *,int *) ;
 int debug_debugfs_dir ;
 int debug_notifier ;
 int debugfs_remove_recursive (int ) ;
 int panic_notifier_list ;

__attribute__((used)) static void debug_func_exit(void)
{
 atomic_notifier_chain_unregister(&panic_notifier_list,
      &debug_notifier);
 debugfs_remove_recursive(debug_debugfs_dir);
}
