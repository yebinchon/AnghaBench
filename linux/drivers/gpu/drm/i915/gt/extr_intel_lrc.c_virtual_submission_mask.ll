; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_virtual_submission_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_virtual_submission_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtual_engine = type { %struct.TYPE_7__, %struct.TYPE_8__**, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.i915_request = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: rq=%llx:%lld, mask=%x, prio=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.virtual_engine*)* @virtual_submission_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @virtual_submission_mask(%struct.virtual_engine* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.virtual_engine*, align 8
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i64, align 8
  store %struct.virtual_engine* %0, %struct.virtual_engine** %3, align 8
  %6 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %7 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.i915_request* @READ_ONCE(i32 %8)
  store %struct.i915_request* %9, %struct.i915_request** %4, align 8
  %10 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %11 = icmp ne %struct.i915_request* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %15 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %13
  %24 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @i915_request_skip(%struct.i915_request* %24, i32 %26)
  %28 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %29 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %23, %13
  %36 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %37 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %41 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %45 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %50 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43, i32 %47, i64 %48, i32 %53)
  %55 = load i64, i64* %5, align 8
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %35, %12
  %57 = load i64, i64* %2, align 8
  ret i64 %57
}

declare dso_local %struct.i915_request* @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i915_request_skip(%struct.i915_request*, i32) #1

declare dso_local i32 @GEM_TRACE(i8*, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
