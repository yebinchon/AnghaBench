; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c_i915_fence_get_timeline_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c_i915_fence_get_timeline_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"signaled\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[i915]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dma_fence*)* @i915_fence_get_timeline_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @i915_fence_get_timeline_name(%struct.dma_fence* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %3, align 8
  %4 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %5 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %6 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %5, i32 0, i32 0
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %12 = call %struct.TYPE_4__* @to_request(%struct.dma_fence* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = inttoptr i64 %16 to i8*
  br label %21

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i8* [ %19, %18 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %20 ]
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %21, %9
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @to_request(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
