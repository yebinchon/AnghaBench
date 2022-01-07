; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_find_next_unhydrated_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_find_next_unhydrated_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dm_clone_find_next_unhydrated_region(%struct.dm_clone_metadata* %0, i64 %1) #0 {
  %3 = alloca %struct.dm_clone_metadata*, align 8
  %4 = alloca i64, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %6 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %9 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @find_next_zero_bit(i32 %7, i32 %10, i64 %11)
  ret i64 %12
}

declare dso_local i64 @find_next_zero_bit(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
