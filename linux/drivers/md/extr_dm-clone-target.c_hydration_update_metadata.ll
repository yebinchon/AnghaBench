; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_hydration_update_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_hydration_update_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_region_hydration = type { i64, i32, i32, %struct.clone* }
%struct.clone = type { i32 }
%struct.hash_table_bucket = type { i32 }

@CM_READ_ONLY = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_clone_region_hydration*)* @hydration_update_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hydration_update_metadata(%struct.dm_clone_region_hydration* %0) #0 {
  %2 = alloca %struct.dm_clone_region_hydration*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.hash_table_bucket*, align 8
  %6 = alloca %struct.clone*, align 8
  store %struct.dm_clone_region_hydration* %0, %struct.dm_clone_region_hydration** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %8 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %7, i32 0, i32 3
  %9 = load %struct.clone*, %struct.clone** %8, align 8
  store %struct.clone* %9, %struct.clone** %6, align 8
  %10 = load %struct.clone*, %struct.clone** %6, align 8
  %11 = call i64 @get_clone_mode(%struct.clone* %10)
  %12 = load i64, i64* @CM_READ_ONLY, align 8
  %13 = icmp sge i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %29 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BLK_STS_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.clone*, %struct.clone** %6, align 8
  %35 = getelementptr inbounds %struct.clone, %struct.clone* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %38 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dm_clone_set_region_hydrated(i32 %36, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %27, %20
  %42 = load %struct.clone*, %struct.clone** %6, align 8
  %43 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %44 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.hash_table_bucket* @get_hash_table_bucket(%struct.clone* %42, i32 %45)
  store %struct.hash_table_bucket* %46, %struct.hash_table_bucket** %5, align 8
  %47 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %5, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @bucket_lock_irqsave(%struct.hash_table_bucket* %47, i64 %48)
  %50 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %2, align 8
  %51 = getelementptr inbounds %struct.dm_clone_region_hydration, %struct.dm_clone_region_hydration* %50, i32 0, i32 1
  %52 = call i32 @hlist_del(i32* %51)
  %53 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %5, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket* %53, i64 %54)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_clone_mode(%struct.clone*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dm_clone_set_region_hydrated(i32, i32) #1

declare dso_local %struct.hash_table_bucket* @get_hash_table_bucket(%struct.clone*, i32) #1

declare dso_local i32 @bucket_lock_irqsave(%struct.hash_table_bucket*, i64) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
