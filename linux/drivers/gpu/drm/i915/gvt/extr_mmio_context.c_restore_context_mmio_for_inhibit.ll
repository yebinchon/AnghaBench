; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_restore_context_mmio_for_inhibit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_restore_context_mmio_for_inhibit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, %struct.engine_mmio* }
%struct.engine_mmio = type { i32, i32, i32, i32 }
%struct.i915_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.i915_request*, i32)* }

@EMIT_BARRIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"add lri reg pair 0x%x:0x%x in inhibit ctx, vgpu:%d, rind_id:%d\0A\00", align 1
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, %struct.i915_request*)* @restore_context_mmio_for_inhibit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_context_mmio_for_inhibit(%struct.intel_vgpu* %0, %struct.i915_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.engine_mmio*, align 8
  %9 = alloca %struct.intel_gvt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store %struct.i915_request* %1, %struct.i915_request** %5, align 8
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %12, i32 0, i32 1
  %14 = load %struct.intel_gvt*, %struct.intel_gvt** %13, align 8
  store %struct.intel_gvt* %14, %struct.intel_gvt** %9, align 8
  %15 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %16 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.intel_gvt*, %struct.intel_gvt** %9, align 8
  %21 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %136

31:                                               ; preds = %2
  %32 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %33 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32 (%struct.i915_request*, i32)*, i32 (%struct.i915_request*, i32)** %35, align 8
  %37 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %38 = load i32, i32* @EMIT_BARRIER, align 4
  %39 = call i32 %36(%struct.i915_request* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %136

44:                                               ; preds = %31
  %45 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 %46, 2
  %48 = add nsw i32 %47, 2
  %49 = call i32* @intel_ring_begin(%struct.i915_request* %45, i32 %48)
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i64 @IS_ERR(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @PTR_ERR(i32* %54)
  store i32 %55, i32* %3, align 4
  br label %136

56:                                               ; preds = %44
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @MI_LOAD_REGISTER_IMM(i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  %61 = load %struct.intel_gvt*, %struct.intel_gvt** %9, align 8
  %62 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load %struct.engine_mmio*, %struct.engine_mmio** %63, align 8
  store %struct.engine_mmio* %64, %struct.engine_mmio** %8, align 8
  br label %65

65:                                               ; preds = %113, %56
  %66 = load %struct.engine_mmio*, %struct.engine_mmio** %8, align 8
  %67 = getelementptr inbounds %struct.engine_mmio, %struct.engine_mmio* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @i915_mmio_reg_valid(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %116

71:                                               ; preds = %65
  %72 = load %struct.engine_mmio*, %struct.engine_mmio** %8, align 8
  %73 = getelementptr inbounds %struct.engine_mmio, %struct.engine_mmio* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load %struct.engine_mmio*, %struct.engine_mmio** %8, align 8
  %79 = getelementptr inbounds %struct.engine_mmio, %struct.engine_mmio* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77, %71
  br label %113

83:                                               ; preds = %77
  %84 = load %struct.engine_mmio*, %struct.engine_mmio** %8, align 8
  %85 = getelementptr inbounds %struct.engine_mmio, %struct.engine_mmio* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @i915_mmio_reg_offset(i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  %90 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %91 = load %struct.engine_mmio*, %struct.engine_mmio** %8, align 8
  %92 = getelementptr inbounds %struct.engine_mmio, %struct.engine_mmio* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @vgpu_vreg_t(%struct.intel_vgpu* %90, i32 %93)
  %95 = load %struct.engine_mmio*, %struct.engine_mmio** %8, align 8
  %96 = getelementptr inbounds %struct.engine_mmio, %struct.engine_mmio* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 16
  %99 = or i32 %94, %98
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %6, align 8
  store i32 %99, i32* %100, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 -2
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 -1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %109 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %107, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %83, %82
  %114 = load %struct.engine_mmio*, %struct.engine_mmio** %8, align 8
  %115 = getelementptr inbounds %struct.engine_mmio, %struct.engine_mmio* %114, i32 1
  store %struct.engine_mmio* %115, %struct.engine_mmio** %8, align 8
  br label %65

116:                                              ; preds = %65
  %117 = load i32, i32* @MI_NOOP, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %6, align 8
  store i32 %117, i32* %118, align 4
  %120 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @intel_ring_advance(%struct.i915_request* %120, i32* %121)
  %123 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %124 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32 (%struct.i915_request*, i32)*, i32 (%struct.i915_request*, i32)** %126, align 8
  %128 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %129 = load i32, i32* @EMIT_BARRIER, align 4
  %130 = call i32 %127(%struct.i915_request* %128, i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %116
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %3, align 4
  br label %136

135:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %133, %53, %42, %30
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i64 @i915_mmio_reg_valid(i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @vgpu_vreg_t(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @gvt_dbg_core(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
