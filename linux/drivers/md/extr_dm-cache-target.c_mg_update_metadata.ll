; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_mg_update_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_mg_update_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.dm_cache_migration = type { i32, %struct.policy_work*, %struct.cache* }
%struct.policy_work = type { i32, i32, i32 }
%struct.cache = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"%s: migration failed; couldn't insert mapping\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dm_cache_insert_mapping\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"%s: migration failed; couldn't update on disk metadata\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"dm_cache_remove_mapping\00", align 1
@mg_success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @mg_update_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_update_metadata(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_cache_migration*, align 8
  %5 = alloca %struct.cache*, align 8
  %6 = alloca %struct.policy_work*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %7 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %8 = call %struct.dm_cache_migration* @ws_to_mg(%struct.work_struct* %7)
  store %struct.dm_cache_migration* %8, %struct.dm_cache_migration** %4, align 8
  %9 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %10 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %9, i32 0, i32 2
  %11 = load %struct.cache*, %struct.cache** %10, align 8
  store %struct.cache* %11, %struct.cache** %5, align 8
  %12 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %13 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %12, i32 0, i32 1
  %14 = load %struct.policy_work*, %struct.policy_work** %13, align 8
  store %struct.policy_work* %14, %struct.policy_work** %6, align 8
  %15 = load %struct.policy_work*, %struct.policy_work** %6, align 8
  %16 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %78 [
    i32 129, label %18
    i32 130, label %43
    i32 128, label %75
  ]

18:                                               ; preds = %1
  %19 = load %struct.cache*, %struct.cache** %5, align 8
  %20 = getelementptr inbounds %struct.cache, %struct.cache* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.policy_work*, %struct.policy_work** %6, align 8
  %23 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.policy_work*, %struct.policy_work** %6, align 8
  %26 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dm_cache_insert_mapping(i32 %21, i32 %24, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load %struct.cache*, %struct.cache** %5, align 8
  %33 = call i32 @cache_device_name(%struct.cache* %32)
  %34 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.cache*, %struct.cache** %5, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @metadata_operation_failed(%struct.cache* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %39 = call i32 @mg_complete(%struct.dm_cache_migration* %38, i32 0)
  br label %78

40:                                               ; preds = %18
  %41 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %42 = call i32 @mg_complete(%struct.dm_cache_migration* %41, i32 1)
  br label %78

43:                                               ; preds = %1
  %44 = load %struct.cache*, %struct.cache** %5, align 8
  %45 = getelementptr inbounds %struct.cache, %struct.cache* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.policy_work*, %struct.policy_work** %6, align 8
  %48 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dm_cache_remove_mapping(i32 %46, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load %struct.cache*, %struct.cache** %5, align 8
  %55 = call i32 @cache_device_name(%struct.cache* %54)
  %56 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.cache*, %struct.cache** %5, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @metadata_operation_failed(%struct.cache* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %61 = call i32 @mg_complete(%struct.dm_cache_migration* %60, i32 0)
  br label %78

62:                                               ; preds = %43
  %63 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %64 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %63, i32 0, i32 0
  %65 = load i32, i32* @mg_success, align 4
  %66 = call i32 @init_continuation(i32* %64, i32 %65)
  %67 = load %struct.cache*, %struct.cache** %5, align 8
  %68 = getelementptr inbounds %struct.cache, %struct.cache* %67, i32 0, i32 0
  %69 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %70 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %69, i32 0, i32 0
  %71 = call i32 @continue_after_commit(i32* %68, i32* %70)
  %72 = load %struct.cache*, %struct.cache** %5, align 8
  %73 = getelementptr inbounds %struct.cache, %struct.cache* %72, i32 0, i32 0
  %74 = call i32 @schedule_commit(i32* %73)
  br label %78

75:                                               ; preds = %1
  %76 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %4, align 8
  %77 = call i32 @mg_complete(%struct.dm_cache_migration* %76, i32 1)
  br label %78

78:                                               ; preds = %31, %53, %1, %75, %62, %40
  ret void
}

declare dso_local %struct.dm_cache_migration* @ws_to_mg(%struct.work_struct*) #1

declare dso_local i32 @dm_cache_insert_mapping(i32, i32, i32) #1

declare dso_local i32 @DMERR_LIMIT(i8*, i32) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

declare dso_local i32 @metadata_operation_failed(%struct.cache*, i8*, i32) #1

declare dso_local i32 @mg_complete(%struct.dm_cache_migration*, i32) #1

declare dso_local i32 @dm_cache_remove_mapping(i32, i32) #1

declare dso_local i32 @init_continuation(i32*, i32) #1

declare dso_local i32 @continue_after_commit(i32*, i32*) #1

declare dso_local i32 @schedule_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
