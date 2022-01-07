; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_is_region_hydrated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_is_region_hydrated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_clone_is_region_hydrated(%struct.dm_clone_metadata* %0, i64 %1) #0 {
  %3 = alloca %struct.dm_clone_metadata*, align 8
  %4 = alloca i64, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %6 = call i64 @dm_clone_is_hydration_done(%struct.dm_clone_metadata* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %11 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @test_bit(i64 %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi i1 [ true, %2 ], [ %14, %8 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i64 @dm_clone_is_hydration_done(%struct.dm_clone_metadata*) #1

declare dso_local i64 @test_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
