; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_overwrite_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_overwrite_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.dm_clone_region_hydration* }
%struct.dm_clone_region_hydration = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @overwrite_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overwrite_endio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.dm_clone_region_hydration*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 2
  %6 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %5, align 8
  store %struct.dm_clone_region_hydration* %6, %struct.dm_clone_region_hydration** %3, align 8
  %7 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %3, align 8
  %8 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %3, align 8
  %16 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %3, align 8
  %18 = call i32 @hydration_complete(%struct.dm_clone_region_hydration* %17)
  ret void
}

declare dso_local i32 @hydration_complete(%struct.dm_clone_region_hydration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
