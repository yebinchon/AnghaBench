; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_is_range_hydrated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_is_range_hydrated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_clone_is_range_hydrated(%struct.dm_clone_metadata* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_clone_metadata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %5, align 8
  %10 = call i64 @dm_clone_is_hydration_done(%struct.dm_clone_metadata* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %28

13:                                               ; preds = %3
  %14 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %5, align 8
  %15 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %5, align 8
  %18 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @find_next_zero_bit(i32 %16, i32 %19, i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %23, %24
  %26 = icmp uge i64 %22, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %13, %12
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i64 @dm_clone_is_hydration_done(%struct.dm_clone_metadata*) #1

declare dso_local i64 @find_next_zero_bit(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
