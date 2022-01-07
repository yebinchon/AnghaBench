; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_invalidate_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_invalidate_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.bio = type { i32 }
%struct.dm_cache_migration = type { i32, i32, %struct.bio* }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, i32, i32, %struct.bio*)* @invalidate_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_start(%struct.cache* %0, i32 %1, i32 %2, %struct.bio* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  %10 = alloca %struct.dm_cache_migration*, align 8
  store %struct.cache* %0, %struct.cache** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.bio* %3, %struct.bio** %9, align 8
  %11 = load %struct.cache*, %struct.cache** %6, align 8
  %12 = call i32 @background_work_begin(%struct.cache* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %31

17:                                               ; preds = %4
  %18 = load %struct.cache*, %struct.cache** %6, align 8
  %19 = call %struct.dm_cache_migration* @alloc_migration(%struct.cache* %18)
  store %struct.dm_cache_migration* %19, %struct.dm_cache_migration** %10, align 8
  %20 = load %struct.bio*, %struct.bio** %9, align 8
  %21 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %10, align 8
  %22 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %21, i32 0, i32 2
  store %struct.bio* %20, %struct.bio** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %10, align 8
  %25 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %10, align 8
  %28 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %10, align 8
  %30 = call i32 @invalidate_lock(%struct.dm_cache_migration* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %17, %14
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @background_work_begin(%struct.cache*) #1

declare dso_local %struct.dm_cache_migration* @alloc_migration(%struct.cache*) #1

declare dso_local i32 @invalidate_lock(%struct.dm_cache_migration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
