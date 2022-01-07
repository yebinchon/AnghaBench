; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_pool.c_bucket_for_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_pool.c_bucket_for_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.intel_engine_pool = type { %struct.list_head* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.intel_engine_pool*, i64)* @bucket_for_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @bucket_for_size(%struct.intel_engine_pool* %0, i64 %1) #0 {
  %3 = alloca %struct.intel_engine_pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.intel_engine_pool* %0, %struct.intel_engine_pool** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @PAGE_SHIFT, align 8
  %8 = lshr i64 %6, %7
  %9 = call i32 @fls(i64 %8)
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.intel_engine_pool*, %struct.intel_engine_pool** %3, align 8
  %13 = getelementptr inbounds %struct.intel_engine_pool, %struct.intel_engine_pool* %12, i32 0, i32 0
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.list_head* %14)
  %16 = icmp sge i32 %11, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.intel_engine_pool*, %struct.intel_engine_pool** %3, align 8
  %19 = getelementptr inbounds %struct.intel_engine_pool, %struct.intel_engine_pool* %18, i32 0, i32 0
  %20 = load %struct.list_head*, %struct.list_head** %19, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.list_head* %20)
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.intel_engine_pool*, %struct.intel_engine_pool** %3, align 8
  %25 = getelementptr inbounds %struct.intel_engine_pool, %struct.intel_engine_pool* %24, i32 0, i32 0
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i64 %28
  ret %struct.list_head* %29
}

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
