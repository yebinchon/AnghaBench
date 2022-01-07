; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_intel_gvt_switch_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_intel_gvt_switch_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"switch ring %d from %s to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vGPU\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@FORCEWAKE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_gvt_switch_mmio(%struct.intel_vgpu* %0, %struct.intel_vgpu* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store %struct.intel_vgpu* %1, %struct.intel_vgpu** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %9 = icmp ne %struct.intel_vgpu* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %12 = icmp ne %struct.intel_vgpu* %11, null
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i1 [ false, %3 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %59

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %23 = icmp ne %struct.intel_vgpu* %22, null
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %26 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %27 = icmp ne %struct.intel_vgpu* %26, null
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %30 = call i32 @gvt_dbg_render(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %25, i8* %29)
  %31 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %32 = icmp ne %struct.intel_vgpu* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %35 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %37, align 8
  br label %45

39:                                               ; preds = %20
  %40 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %41 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %43, align 8
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi %struct.drm_i915_private* [ %38, %33 ], [ %44, %39 ]
  store %struct.drm_i915_private* %46, %struct.drm_i915_private** %7, align 8
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = load i32, i32* @FORCEWAKE_ALL, align 4
  %50 = call i32 @intel_uncore_forcewake_get(i32* %48, i32 %49)
  %51 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %52 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @switch_mmio(%struct.intel_vgpu* %51, %struct.intel_vgpu* %52, i32 %53)
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 0
  %57 = load i32, i32* @FORCEWAKE_ALL, align 4
  %58 = call i32 @intel_uncore_forcewake_put(i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %45, %19
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @gvt_dbg_render(i8*, i32, i8*, i8*) #1

declare dso_local i32 @intel_uncore_forcewake_get(i32*, i32) #1

declare dso_local i32 @switch_mmio(%struct.intel_vgpu*, %struct.intel_vgpu*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
