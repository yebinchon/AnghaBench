; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___send_write_same.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___send_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone_info = type { i32 }
%struct.dm_target = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone_info*, %struct.dm_target*)* @__send_write_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__send_write_same(%struct.clone_info* %0, %struct.dm_target* %1) #0 {
  %3 = alloca %struct.clone_info*, align 8
  %4 = alloca %struct.dm_target*, align 8
  store %struct.clone_info* %0, %struct.clone_info** %3, align 8
  store %struct.dm_target* %1, %struct.dm_target** %4, align 8
  %5 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %6 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %8 = call i32 @get_num_write_same_bios(%struct.dm_target* %7)
  %9 = call i32 @__send_changing_extent_only(%struct.clone_info* %5, %struct.dm_target* %6, i32 %8)
  ret i32 %9
}

declare dso_local i32 @__send_changing_extent_only(%struct.clone_info*, %struct.dm_target*, i32) #1

declare dso_local i32 @get_num_write_same_bios(%struct.dm_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
