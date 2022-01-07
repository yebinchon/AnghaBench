; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_intel_mocs_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_intel_mocs_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.drm_i915_mocs_table = type { i32 }

@RENDER_CLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_mocs_emit(%struct.i915_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.drm_i915_mocs_table, align 4
  %5 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  %6 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %7 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @HAS_GLOBAL_MOCS_REGISTERS(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %13 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RENDER_CLASS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %44

20:                                               ; preds = %11
  %21 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %22 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @get_mocs_settings(i32 %25, %struct.drm_i915_mocs_table* %4)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %20
  %29 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %30 = call i32 @emit_mocs_control_table(%struct.i915_request* %29, %struct.drm_i915_mocs_table* %4)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %28
  %36 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %37 = call i32 @emit_mocs_l3cc_table(%struct.i915_request* %36, %struct.drm_i915_mocs_table* %4)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %20
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %33, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @HAS_GLOBAL_MOCS_REGISTERS(i32) #1

declare dso_local i64 @get_mocs_settings(i32, %struct.drm_i915_mocs_table*) #1

declare dso_local i32 @emit_mocs_control_table(%struct.i915_request*, %struct.drm_i915_mocs_table*) #1

declare dso_local i32 @emit_mocs_l3cc_table(%struct.i915_request*, %struct.drm_i915_mocs_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
