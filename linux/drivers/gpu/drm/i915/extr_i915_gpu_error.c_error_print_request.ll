; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_error_print_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_error_print_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_error_state_buf = type { i32 }
%struct.drm_i915_error_request = type { i32, i32, i32, i64, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [88 x i8] c"%s pid %d, seqno %8x:%08x%s%s, prio %d, emitted %dms, start %08x, head %08x, tail %08x\0A\00", align 1
@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_error_state_buf*, i8*, %struct.drm_i915_error_request*, i64)* @error_print_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_print_request(%struct.drm_i915_error_state_buf* %0, i8* %1, %struct.drm_i915_error_request* %2, i64 %3) #0 {
  %5 = alloca %struct.drm_i915_error_state_buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_i915_error_request*, align 8
  %8 = alloca i64, align 8
  store %struct.drm_i915_error_state_buf* %0, %struct.drm_i915_error_state_buf** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_i915_error_request* %2, %struct.drm_i915_error_request** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %7, align 8
  %10 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %60

14:                                               ; preds = %4
  %15 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %7, align 8
  %18 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %7, align 8
  %21 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %7, align 8
  %24 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %27 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %7, align 8
  %28 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %27, i32 0, i32 5
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %33 = load i32, i32* @DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, align 4
  %34 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %7, align 8
  %35 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %34, i32 0, i32 5
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %40 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %7, align 8
  %41 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %7, align 8
  %45 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub i64 %46, %47
  %49 = call i32 @jiffies_to_msecs(i64 %48)
  %50 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %7, align 8
  %51 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %7, align 8
  %54 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_i915_error_request*, %struct.drm_i915_error_request** %7, align 8
  %57 = getelementptr inbounds %struct.drm_i915_error_request, %struct.drm_i915_error_request* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @err_printf(%struct.drm_i915_error_state_buf* %15, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19, i32 %22, i32 %25, i8* %32, i8* %39, i32 %43, i32 %49, i32 %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @err_printf(%struct.drm_i915_error_state_buf*, i8*, i8*, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
