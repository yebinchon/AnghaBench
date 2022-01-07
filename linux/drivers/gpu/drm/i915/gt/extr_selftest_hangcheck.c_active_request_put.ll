; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c_active_request_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c_active_request_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%s timed out waiting for completion of fence %llx:%lld\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*)* @active_request_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @active_request_put(%struct.i915_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %6 = icmp ne %struct.i915_request* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

8:                                                ; preds = %1
  %9 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 5, %10
  %12 = call i64 @i915_request_wait(%struct.i915_request* %9, i32 0, i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  %15 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %16 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %21 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %25 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23, i32 %27)
  %29 = call i32 (...) @GEM_TRACE_DUMP()
  %30 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %31 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @intel_gt_set_wedged(i32 %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %14, %8
  %39 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %40 = call i32 @i915_request_put(%struct.i915_request* %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %7
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @i915_request_wait(%struct.i915_request*, i32, i32) #1

declare dso_local i32 @GEM_TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @GEM_TRACE_DUMP(...) #1

declare dso_local i32 @intel_gt_set_wedged(i32) #1

declare dso_local i32 @i915_request_put(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
