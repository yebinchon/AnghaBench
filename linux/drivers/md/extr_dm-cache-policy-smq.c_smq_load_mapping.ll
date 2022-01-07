; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_smq_load_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_smq_load_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy = type { i32 }
%struct.smq_policy = type { i32 }
%struct.entry = type { i32, i32, i32, i32 }

@NR_CACHE_LEVELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_policy*, i32, i32, i32, i32, i32)* @smq_load_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smq_load_mapping(%struct.dm_cache_policy* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dm_cache_policy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.smq_policy*, align 8
  %14 = alloca %struct.entry*, align 8
  store %struct.dm_cache_policy* %0, %struct.dm_cache_policy** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %7, align 8
  %16 = call %struct.smq_policy* @to_smq_policy(%struct.dm_cache_policy* %15)
  store %struct.smq_policy* %16, %struct.smq_policy** %13, align 8
  %17 = load %struct.smq_policy*, %struct.smq_policy** %13, align 8
  %18 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %17, i32 0, i32 0
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @from_cblock(i32 %19)
  %21 = call %struct.entry* @alloc_particular_entry(i32* %18, i32 %20)
  store %struct.entry* %21, %struct.entry** %14, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.entry*, %struct.entry** %14, align 8
  %24 = getelementptr inbounds %struct.entry, %struct.entry* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.entry*, %struct.entry** %14, align 8
  %27 = getelementptr inbounds %struct.entry, %struct.entry* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = load i64, i64* @NR_CACHE_LEVELS, align 8
  %33 = sub nsw i64 %32, 1
  %34 = call i32 @min(i32 %31, i64 %33)
  br label %38

35:                                               ; preds = %6
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @random_level(i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i32 [ %34, %30 ], [ %37, %35 ]
  %40 = load %struct.entry*, %struct.entry** %14, align 8
  %41 = getelementptr inbounds %struct.entry, %struct.entry* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.entry*, %struct.entry** %14, align 8
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.smq_policy*, %struct.smq_policy** %13, align 8
  %45 = load %struct.entry*, %struct.entry** %14, align 8
  %46 = call i32 @push_front(%struct.smq_policy* %44, %struct.entry* %45)
  ret i32 0
}

declare dso_local %struct.smq_policy* @to_smq_policy(%struct.dm_cache_policy*) #1

declare dso_local %struct.entry* @alloc_particular_entry(i32*, i32) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @random_level(i32) #1

declare dso_local i32 @push_front(%struct.smq_policy*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
