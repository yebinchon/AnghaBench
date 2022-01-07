; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_smq_invalidate_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_smq_invalidate_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy = type { i32 }
%struct.smq_policy = type { i32, i32 }
%struct.entry = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_policy*, i32)* @smq_invalidate_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smq_invalidate_mapping(%struct.dm_cache_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_cache_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smq_policy*, align 8
  %7 = alloca %struct.entry*, align 8
  store %struct.dm_cache_policy* %0, %struct.dm_cache_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %4, align 8
  %9 = call %struct.smq_policy* @to_smq_policy(%struct.dm_cache_policy* %8)
  store %struct.smq_policy* %9, %struct.smq_policy** %6, align 8
  %10 = load %struct.smq_policy*, %struct.smq_policy** %6, align 8
  %11 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %10, i32 0, i32 0
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @from_cblock(i32 %12)
  %14 = call %struct.entry* @get_entry(i32* %11, i32 %13)
  store %struct.entry* %14, %struct.entry** %7, align 8
  %15 = load %struct.entry*, %struct.entry** %7, align 8
  %16 = getelementptr inbounds %struct.entry, %struct.entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODATA, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.smq_policy*, %struct.smq_policy** %6, align 8
  %24 = load %struct.entry*, %struct.entry** %7, align 8
  %25 = call i32 @del_queue(%struct.smq_policy* %23, %struct.entry* %24)
  %26 = load %struct.smq_policy*, %struct.smq_policy** %6, align 8
  %27 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %26, i32 0, i32 1
  %28 = load %struct.entry*, %struct.entry** %7, align 8
  %29 = call i32 @h_remove(i32* %27, %struct.entry* %28)
  %30 = load %struct.smq_policy*, %struct.smq_policy** %6, align 8
  %31 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %30, i32 0, i32 0
  %32 = load %struct.entry*, %struct.entry** %7, align 8
  %33 = call i32 @free_entry(i32* %31, %struct.entry* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %22, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.smq_policy* @to_smq_policy(%struct.dm_cache_policy*) #1

declare dso_local %struct.entry* @get_entry(i32*, i32) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @del_queue(%struct.smq_policy*, %struct.entry*) #1

declare dso_local i32 @h_remove(i32*, %struct.entry*) #1

declare dso_local i32 @free_entry(i32*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
