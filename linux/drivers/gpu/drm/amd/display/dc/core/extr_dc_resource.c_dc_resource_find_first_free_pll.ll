; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_resource_find_first_free_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_resource_find_first_free_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_source = type { i32 }
%struct.resource_context = type { i64* }
%struct.resource_pool = type { i32, %struct.clock_source** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clock_source* @dc_resource_find_first_free_pll(%struct.resource_context* %0, %struct.resource_pool* %1) #0 {
  %3 = alloca %struct.clock_source*, align 8
  %4 = alloca %struct.resource_context*, align 8
  %5 = alloca %struct.resource_pool*, align 8
  %6 = alloca i32, align 4
  store %struct.resource_context* %0, %struct.resource_context** %4, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %10 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %7
  %14 = load %struct.resource_context*, %struct.resource_context** %4, align 8
  %15 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %24 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %23, i32 0, i32 1
  %25 = load %struct.clock_source**, %struct.clock_source*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.clock_source*, %struct.clock_source** %25, i64 %27
  %29 = load %struct.clock_source*, %struct.clock_source** %28, align 8
  store %struct.clock_source* %29, %struct.clock_source** %3, align 8
  br label %35

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %7

34:                                               ; preds = %7
  store %struct.clock_source* null, %struct.clock_source** %3, align 8
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.clock_source*, %struct.clock_source** %3, align 8
  ret %struct.clock_source* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
