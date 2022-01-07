; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_restore_render_mocs_control_for_inhibit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_restore_render_mocs_control_for_inhibit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }
%struct.i915_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GEN9_MOCS_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"add lri reg pair 0x%x:0x%x in inhibit ctx, vgpu:%d, rind_id:%d\0A\00", align 1
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, %struct.i915_request*)* @restore_render_mocs_control_for_inhibit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_render_mocs_control_for_inhibit(%struct.intel_vgpu* %0, %struct.i915_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store %struct.i915_request* %1, %struct.i915_request** %5, align 8
  %8 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %9 = load i32, i32* @GEN9_MOCS_SIZE, align 4
  %10 = mul nsw i32 2, %9
  %11 = add nsw i32 %10, 2
  %12 = call i32* @intel_ring_begin(%struct.i915_request* %8, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @IS_ERR(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @PTR_ERR(i32* %17)
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load i32, i32* @GEN9_MOCS_SIZE, align 4
  %21 = call i32 @MI_LOAD_REGISTER_IMM(i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %55, %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @GEN9_MOCS_SIZE, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @GEN9_GFX_MOCS(i32 %29)
  %31 = call i32 @i915_mmio_reg_offset(i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %34 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @GEN9_GFX_MOCS(i32 %35)
  %37 = call i32 @vgpu_vreg_t(%struct.intel_vgpu* %34, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 -2
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 -1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %47 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %50 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %28
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %24

58:                                               ; preds = %24
  %59 = load i32, i32* @MI_NOOP, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %62 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @intel_ring_advance(%struct.i915_request* %62, i32* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @GEN9_GFX_MOCS(i32) #1

declare dso_local i32 @vgpu_vreg_t(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @gvt_dbg_core(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
