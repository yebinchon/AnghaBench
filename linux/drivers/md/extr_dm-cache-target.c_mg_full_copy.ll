; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_mg_full_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_mg_full_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.dm_cache_migration = type { i32, %struct.policy_work*, %struct.cache* }
%struct.policy_work = type { i32, i32, i32 }
%struct.cache = type { i32 }

@POLICY_PROMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @mg_full_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_full_copy(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.dm_cache_migration*, align 8
  %4 = alloca %struct.cache*, align 8
  %5 = alloca %struct.policy_work*, align 8
  %6 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %7 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %8 = call %struct.dm_cache_migration* @ws_to_mg(%struct.work_struct* %7)
  store %struct.dm_cache_migration* %8, %struct.dm_cache_migration** %3, align 8
  %9 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %10 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %9, i32 0, i32 2
  %11 = load %struct.cache*, %struct.cache** %10, align 8
  store %struct.cache* %11, %struct.cache** %4, align 8
  %12 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %13 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %12, i32 0, i32 1
  %14 = load %struct.policy_work*, %struct.policy_work** %13, align 8
  store %struct.policy_work* %14, %struct.policy_work** %5, align 8
  %15 = load %struct.policy_work*, %struct.policy_work** %5, align 8
  %16 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @POLICY_PROMOTE, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.cache*, %struct.cache** %4, align 8
  %25 = load %struct.policy_work*, %struct.policy_work** %5, align 8
  %26 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @is_dirty(%struct.cache* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23, %1
  %31 = load %struct.cache*, %struct.cache** %4, align 8
  %32 = load %struct.policy_work*, %struct.policy_work** %5, align 8
  %33 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @is_discarded_oblock(%struct.cache* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %23
  %38 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %39 = call i32 @mg_upgrade_lock(%struct.work_struct* %38)
  br label %47

40:                                               ; preds = %30
  %41 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %42 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %41, i32 0, i32 0
  %43 = call i32 @init_continuation(i32* %42, i32 (%struct.work_struct*)* @mg_upgrade_lock)
  %44 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @copy(%struct.dm_cache_migration* %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %37
  ret void
}

declare dso_local %struct.dm_cache_migration* @ws_to_mg(%struct.work_struct*) #1

declare dso_local i32 @is_dirty(%struct.cache*, i32) #1

declare dso_local i64 @is_discarded_oblock(%struct.cache*, i32) #1

declare dso_local i32 @mg_upgrade_lock(%struct.work_struct*) #1

declare dso_local i32 @init_continuation(i32*, i32 (%struct.work_struct*)*) #1

declare dso_local i32 @copy(%struct.dm_cache_migration*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
