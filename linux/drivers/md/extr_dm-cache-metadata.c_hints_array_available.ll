; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_hints_array_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_hints_array_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i64 }
%struct.dm_cache_policy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, %struct.dm_cache_policy*)* @hints_array_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hints_array_available(%struct.dm_cache_metadata* %0, %struct.dm_cache_policy* %1) #0 {
  %3 = alloca %struct.dm_cache_metadata*, align 8
  %4 = alloca %struct.dm_cache_policy*, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %3, align 8
  store %struct.dm_cache_policy* %1, %struct.dm_cache_policy** %4, align 8
  %5 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %6 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %11 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %4, align 8
  %12 = call i64 @policy_unchanged(%struct.dm_cache_metadata* %10, %struct.dm_cache_policy* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %16 = call i64 @hints_array_initialized(%struct.dm_cache_metadata* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %9, %2
  %19 = phi i1 [ false, %9 ], [ false, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i64 @policy_unchanged(%struct.dm_cache_metadata*, %struct.dm_cache_policy*) #1

declare dso_local i64 @hints_array_initialized(%struct.dm_cache_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
