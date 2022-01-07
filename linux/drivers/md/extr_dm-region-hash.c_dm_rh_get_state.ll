; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c_dm_rh_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c_dm_rh_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }
%struct.dm_region = type { i32 }

@DM_RH_CLEAN = common dso_local global i32 0, align 4
@DM_RH_NOSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_rh_get_state(%struct.dm_region_hash* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_region_hash*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_region*, align 8
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %11 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %10, i32 0, i32 1
  %12 = call i32 @read_lock(i32* %11)
  %13 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.dm_region* @__rh_lookup(%struct.dm_region_hash* %13, i32 %14)
  store %struct.dm_region* %15, %struct.dm_region** %9, align 8
  %16 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %17 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %16, i32 0, i32 1
  %18 = call i32 @read_unlock(i32* %17)
  %19 = load %struct.dm_region*, %struct.dm_region** %9, align 8
  %20 = icmp ne %struct.dm_region* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.dm_region*, %struct.dm_region** %9, align 8
  %23 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %47

25:                                               ; preds = %3
  %26 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %27 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %31, align 8
  %33 = load %struct.dm_region_hash*, %struct.dm_region_hash** %5, align 8
  %34 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 %32(%struct.TYPE_4__* %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @DM_RH_CLEAN, align 4
  br label %45

43:                                               ; preds = %25
  %44 = load i32, i32* @DM_RH_NOSYNC, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %21
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.dm_region* @__rh_lookup(%struct.dm_region_hash*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
