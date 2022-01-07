; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_sysfs_cache_delist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qemu_fw_cfg.c_fw_cfg_sysfs_cache_delist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_cfg_sysfs_entry = type { i32 }

@fw_cfg_cache_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_cfg_sysfs_entry*)* @fw_cfg_sysfs_cache_delist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_cfg_sysfs_cache_delist(%struct.fw_cfg_sysfs_entry* %0) #0 {
  %2 = alloca %struct.fw_cfg_sysfs_entry*, align 8
  store %struct.fw_cfg_sysfs_entry* %0, %struct.fw_cfg_sysfs_entry** %2, align 8
  %3 = call i32 @spin_lock(i32* @fw_cfg_cache_lock)
  %4 = load %struct.fw_cfg_sysfs_entry*, %struct.fw_cfg_sysfs_entry** %2, align 8
  %5 = getelementptr inbounds %struct.fw_cfg_sysfs_entry, %struct.fw_cfg_sysfs_entry* %4, i32 0, i32 0
  %6 = call i32 @list_del(i32* %5)
  %7 = call i32 @spin_unlock(i32* @fw_cfg_cache_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
