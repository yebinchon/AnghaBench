; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_restore_render_mocs_l3cc_for_inhibit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_restore_render_mocs_l3cc_for_inhibit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }
%struct.i915_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GEN9_MOCS_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"add lri reg pair 0x%x:0x%x in inhibit ctx, vgpu:%d, rind_id:%d\0A\00", align 1
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, %struct.i915_request*)* @restore_render_mocs_l3cc_for_inhibit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_render_mocs_l3cc_for_inhibit(%struct.intel_vgpu* %0, %struct.i915_request* %1) #0 {
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
  %11 = sdiv i32 %10, 2
  %12 = add nsw i32 %11, 2
  %13 = call i32* @intel_ring_begin(%struct.i915_request* %8, i32 %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @IS_ERR(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @PTR_ERR(i32* %18)
  store i32 %19, i32* %3, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load i32, i32* @GEN9_MOCS_SIZE, align 4
  %22 = sdiv i32 %21, 2
  %23 = call i32 @MI_LOAD_REGISTER_IMM(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %58, %20
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @GEN9_MOCS_SIZE, align 4
  %29 = sdiv i32 %28, 2
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @GEN9_LNCFCMOCS(i32 %32)
  %34 = call i32 @i915_mmio_reg_offset(i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %37 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @GEN9_LNCFCMOCS(i32 %38)
  %40 = call i32 @vgpu_vreg_t(%struct.intel_vgpu* %37, i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 -2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 -1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %50 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %53 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %31
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %26

61:                                               ; preds = %26
  %62 = load i32, i32* @MI_NOOP, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %65 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @intel_ring_advance(%struct.i915_request* %65, i32* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @GEN9_LNCFCMOCS(i32) #1

declare dso_local i32 @vgpu_vreg_t(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @gvt_dbg_core(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
