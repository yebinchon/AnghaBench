; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_context.c_request_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_context.c_request_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*)* @request_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_sync(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %6 = call i32 @i915_request_get(%struct.i915_request* %5)
  %7 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %8 = call i32 @i915_request_add(%struct.i915_request* %7)
  %9 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %10 = load i32, i32* @HZ, align 4
  %11 = sdiv i32 %10, 10
  %12 = call i64 @i915_request_wait(%struct.i915_request* %9, i32 0, i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %20 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %25 = call i32 @i915_request_retire_upto(%struct.i915_request* %24)
  %26 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %27 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %31

31:                                               ; preds = %18, %15
  %32 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %33 = call i32 @i915_request_put(%struct.i915_request* %32)
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @i915_request_get(%struct.i915_request*) #1

declare dso_local i32 @i915_request_add(%struct.i915_request*) #1

declare dso_local i64 @i915_request_wait(%struct.i915_request*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_request_retire_upto(%struct.i915_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_request_put(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
