; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_use_cmdparser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_use_cmdparser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*)* @eb_use_cmdparser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eb_use_cmdparser(%struct.i915_execbuffer* %0) #0 {
  %2 = alloca %struct.i915_execbuffer*, align 8
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %2, align 8
  %3 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %2, align 8
  %4 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @intel_engine_requires_cmd_parser(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %2, align 8
  %10 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @intel_engine_using_cmd_parser(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %2, align 8
  %16 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %14, %8
  %22 = phi i1 [ false, %8 ], [ %20, %14 ]
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi i1 [ true, %1 ], [ %22, %21 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i64 @intel_engine_requires_cmd_parser(i32) #1

declare dso_local i64 @intel_engine_using_cmd_parser(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
