; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c___start_next_hydration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c___start_next_hydration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i64, i32 }
%struct.batch_info = type { i32 }
%struct.hash_table_bucket = type { i32 }
%struct.dm_clone_region_hydration = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clone*, i64, %struct.batch_info*)* @__start_next_hydration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__start_next_hydration(%struct.clone* %0, i64 %1, %struct.batch_info* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clone*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.batch_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hash_table_bucket*, align 8
  %10 = alloca %struct.dm_clone_region_hydration*, align 8
  %11 = alloca i64, align 8
  store %struct.clone* %0, %struct.clone** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.batch_info* %2, %struct.batch_info** %7, align 8
  %12 = load %struct.clone*, %struct.clone** %5, align 8
  %13 = getelementptr inbounds %struct.clone, %struct.clone* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.clone*, %struct.clone** %5, align 8
  %16 = call %struct.dm_clone_region_hydration* @alloc_hydration(%struct.clone* %15)
  store %struct.dm_clone_region_hydration* %16, %struct.dm_clone_region_hydration** %10, align 8
  br label %17

17:                                               ; preds = %64, %3
  %18 = load %struct.clone*, %struct.clone** %5, align 8
  %19 = getelementptr inbounds %struct.clone, %struct.clone* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @dm_clone_find_next_unhydrated_region(i32 %20, i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %69

27:                                               ; preds = %17
  %28 = load %struct.clone*, %struct.clone** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call %struct.hash_table_bucket* @get_hash_table_bucket(%struct.clone* %28, i64 %29)
  store %struct.hash_table_bucket* %30, %struct.hash_table_bucket** %9, align 8
  %31 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @bucket_lock_irqsave(%struct.hash_table_bucket* %31, i64 %32)
  %34 = load %struct.clone*, %struct.clone** %5, align 8
  %35 = getelementptr inbounds %struct.clone, %struct.clone* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @dm_clone_is_region_hydrated(i32 %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %27
  %41 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @__hash_find(%struct.hash_table_bucket* %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %40
  %46 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %10, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @hydration_init(%struct.dm_clone_region_hydration* %46, i64 %47)
  %49 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %9, align 8
  %50 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %10, align 8
  %51 = call i32 @__insert_region_hydration(%struct.hash_table_bucket* %49, %struct.dm_clone_region_hydration* %50)
  %52 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket* %52, i64 %53)
  %55 = load %struct.batch_info*, %struct.batch_info** %7, align 8
  %56 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %10, align 8
  %57 = call i32 @__batch_hydration(%struct.batch_info* %55, %struct.dm_clone_region_hydration* %56)
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %4, align 8
  br label %77

60:                                               ; preds = %40, %27
  %61 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %9, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket* %61, i64 %62)
  br label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %17, label %69

69:                                               ; preds = %64, %26
  %70 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %10, align 8
  %71 = icmp ne %struct.dm_clone_region_hydration* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.dm_clone_region_hydration*, %struct.dm_clone_region_hydration** %10, align 8
  %74 = call i32 @free_hydration(%struct.dm_clone_region_hydration* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i64, i64* %6, align 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %75, %45
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local %struct.dm_clone_region_hydration* @alloc_hydration(%struct.clone*) #1

declare dso_local i64 @dm_clone_find_next_unhydrated_region(i32, i64) #1

declare dso_local %struct.hash_table_bucket* @get_hash_table_bucket(%struct.clone*, i64) #1

declare dso_local i32 @bucket_lock_irqsave(%struct.hash_table_bucket*, i64) #1

declare dso_local i32 @dm_clone_is_region_hydrated(i32, i64) #1

declare dso_local i32 @__hash_find(%struct.hash_table_bucket*, i64) #1

declare dso_local i32 @hydration_init(%struct.dm_clone_region_hydration*, i64) #1

declare dso_local i32 @__insert_region_hydration(%struct.hash_table_bucket*, %struct.dm_clone_region_hydration*) #1

declare dso_local i32 @bucket_unlock_irqrestore(%struct.hash_table_bucket*, i64) #1

declare dso_local i32 @__batch_hydration(%struct.batch_info*, %struct.dm_clone_region_hydration*) #1

declare dso_local i32 @free_hydration(%struct.dm_clone_region_hydration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
