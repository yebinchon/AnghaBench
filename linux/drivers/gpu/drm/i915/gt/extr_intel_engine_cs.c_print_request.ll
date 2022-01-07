; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_print_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_print_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }
%struct.i915_request = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* (%struct.TYPE_6__*)* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s %llx:%llx%s%s %s @ %dms: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DMA_FENCE_FLAG_SIGNALED_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_printer*, %struct.i915_request*, i8*)* @print_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_request(%struct.drm_printer* %0, %struct.i915_request* %1, i8* %2) #0 {
  %4 = alloca %struct.drm_printer*, align 8
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [80 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.drm_printer* %0, %struct.drm_printer** %4, align 8
  store %struct.i915_request* %1, %struct.i915_request** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %11 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8* (%struct.TYPE_6__*)*, i8* (%struct.TYPE_6__*)** %14, align 8
  %16 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %17 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %16, i32 0, i32 1
  %18 = call i8* %15(%struct.TYPE_6__* %17)
  store i8* %18, i8** %7, align 8
  %19 = bitcast [80 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 80, i1 false)
  store i32 0, i32* %9, align 4
  %20 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %21 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %24 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @print_sched_attr(i32 %22, i32* %25, i8* %26, i32 %27, i32 80)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.drm_printer*, %struct.drm_printer** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %32 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %36 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %40 = call i64 @i915_request_completed(%struct.i915_request* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %49

43:                                               ; preds = %3
  %44 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %45 = call i64 @i915_request_started(%struct.i915_request* %44)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  br label %49

49:                                               ; preds = %43, %42
  %50 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %42 ], [ %48, %43 ]
  %51 = load i32, i32* @DMA_FENCE_FLAG_SIGNALED_BIT, align 4
  %52 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %53 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = call i64 @test_bit(i32 %51, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %67

58:                                               ; preds = %49
  %59 = load i32, i32* @DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, align 4
  %60 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %61 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i64 @test_bit(i32 %59, i32* %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  br label %67

67:                                               ; preds = %58, %57
  %68 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %57 ], [ %66, %58 ]
  %69 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %70 = load i64, i64* @jiffies, align 8
  %71 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %72 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = call i32 @jiffies_to_msecs(i64 %74)
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @drm_printf(%struct.drm_printer* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %34, i32 %38, i8* %50, i8* %68, i8* %69, i32 %75, i8* %76)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @print_sched_attr(i32, i32*, i8*, i32, i32) #2

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i8*, i32, i32, i8*, i8*, i8*, i32, i8*) #2

declare dso_local i64 @i915_request_completed(%struct.i915_request*) #2

declare dso_local i64 @i915_request_started(%struct.i915_request*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @jiffies_to_msecs(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
