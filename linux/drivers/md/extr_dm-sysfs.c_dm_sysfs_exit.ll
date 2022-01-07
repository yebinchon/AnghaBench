; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-sysfs.c_dm_sysfs_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-sysfs.c_dm_sysfs_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.kobject = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_sysfs_exit(%struct.mapped_device* %0) #0 {
  %2 = alloca %struct.mapped_device*, align 8
  %3 = alloca %struct.kobject*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %2, align 8
  %4 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %5 = call %struct.kobject* @dm_kobject(%struct.mapped_device* %4)
  store %struct.kobject* %5, %struct.kobject** %3, align 8
  %6 = load %struct.kobject*, %struct.kobject** %3, align 8
  %7 = call i32 @kobject_put(%struct.kobject* %6)
  %8 = load %struct.kobject*, %struct.kobject** %3, align 8
  %9 = call i32 @dm_get_completion_from_kobject(%struct.kobject* %8)
  %10 = call i32 @wait_for_completion(i32 %9)
  ret void
}

declare dso_local %struct.kobject* @dm_kobject(%struct.mapped_device*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @wait_for_completion(i32) #1

declare dso_local i32 @dm_get_completion_from_kobject(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
