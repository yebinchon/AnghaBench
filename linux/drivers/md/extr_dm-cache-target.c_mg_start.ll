; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_mg_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_mg_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.policy_work = type { i32 }
%struct.bio = type { i32 }
%struct.dm_cache_migration = type { %struct.bio*, %struct.policy_work* }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, %struct.policy_work*, %struct.bio*)* @mg_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_start(%struct.cache* %0, %struct.policy_work* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache*, align 8
  %6 = alloca %struct.policy_work*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.dm_cache_migration*, align 8
  store %struct.cache* %0, %struct.cache** %5, align 8
  store %struct.policy_work* %1, %struct.policy_work** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %9 = load %struct.cache*, %struct.cache** %5, align 8
  %10 = call i32 @background_work_begin(%struct.cache* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load %struct.cache*, %struct.cache** %5, align 8
  %14 = getelementptr inbounds %struct.cache, %struct.cache* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.policy_work*, %struct.policy_work** %6, align 8
  %17 = call i32 @policy_complete_background_work(i32 %15, %struct.policy_work* %16, i32 0)
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.cache*, %struct.cache** %5, align 8
  %22 = call %struct.dm_cache_migration* @alloc_migration(%struct.cache* %21)
  store %struct.dm_cache_migration* %22, %struct.dm_cache_migration** %8, align 8
  %23 = load %struct.policy_work*, %struct.policy_work** %6, align 8
  %24 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %8, align 8
  %25 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %24, i32 0, i32 1
  store %struct.policy_work* %23, %struct.policy_work** %25, align 8
  %26 = load %struct.bio*, %struct.bio** %7, align 8
  %27 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %8, align 8
  %28 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %27, i32 0, i32 0
  store %struct.bio* %26, %struct.bio** %28, align 8
  %29 = load %struct.bio*, %struct.bio** %7, align 8
  %30 = icmp ne %struct.bio* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load %struct.cache*, %struct.cache** %5, align 8
  %33 = call i32 @inc_io_migrations(%struct.cache* %32)
  br label %34

34:                                               ; preds = %31, %20
  %35 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %8, align 8
  %36 = call i32 @mg_lock_writes(%struct.dm_cache_migration* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %12
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @background_work_begin(%struct.cache*) #1

declare dso_local i32 @policy_complete_background_work(i32, %struct.policy_work*, i32) #1

declare dso_local %struct.dm_cache_migration* @alloc_migration(%struct.cache*) #1

declare dso_local i32 @inc_io_migrations(%struct.cache*) #1

declare dso_local i32 @mg_lock_writes(%struct.dm_cache_migration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
