; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_overwrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_overwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_migration = type { i32, i32, %struct.TYPE_2__*, %struct.bio* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.bio = type { i32 }
%struct.work_struct = type opaque
%struct.per_bio_data = type { i32 }
%struct.work_struct.0 = type opaque

@overwrite_endio = common dso_local global i32 0, align 4
@POLICY_PROMOTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_cache_migration*, void (%struct.work_struct*)*)* @overwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overwrite(%struct.dm_cache_migration* %0, void (%struct.work_struct*)* %1) #0 {
  %3 = alloca %struct.dm_cache_migration*, align 8
  %4 = alloca void (%struct.work_struct*)*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.per_bio_data*, align 8
  store %struct.dm_cache_migration* %0, %struct.dm_cache_migration** %3, align 8
  store void (%struct.work_struct*)* %1, void (%struct.work_struct*)** %4, align 8
  %7 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %8 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %7, i32 0, i32 3
  %9 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %9, %struct.bio** %5, align 8
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = call %struct.per_bio_data* @get_per_bio_data(%struct.bio* %10)
  store %struct.per_bio_data* %11, %struct.per_bio_data** %6, align 8
  %12 = load %struct.per_bio_data*, %struct.per_bio_data** %6, align 8
  %13 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %12, i32 0, i32 0
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = load i32, i32* @overwrite_endio, align 4
  %16 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %17 = call i32 @dm_hook_bio(i32* %13, %struct.bio* %14, i32 %15, %struct.dm_cache_migration* %16)
  %18 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %19 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @POLICY_PROMOTE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %27 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %31 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @remap_to_cache(i32 %28, %struct.bio* %29, i32 %34)
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %38 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.bio*, %struct.bio** %5, align 8
  %41 = call i32 @remap_to_origin(i32 %39, %struct.bio* %40)
  br label %42

42:                                               ; preds = %36, %25
  %43 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %44 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %43, i32 0, i32 1
  %45 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %4, align 8
  %46 = bitcast void (%struct.work_struct*)* %45 to void (%struct.work_struct.0*)*
  %47 = call i32 @init_continuation(i32* %44, void (%struct.work_struct.0*)* %46)
  %48 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %49 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bio*, %struct.bio** %5, align 8
  %52 = call i32 @accounted_request(i32 %50, %struct.bio* %51)
  ret void
}

declare dso_local %struct.per_bio_data* @get_per_bio_data(%struct.bio*) #1

declare dso_local i32 @dm_hook_bio(i32*, %struct.bio*, i32, %struct.dm_cache_migration*) #1

declare dso_local i32 @remap_to_cache(i32, %struct.bio*, i32) #1

declare dso_local i32 @remap_to_origin(i32, %struct.bio*) #1

declare dso_local i32 @init_continuation(i32*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @accounted_request(i32, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
