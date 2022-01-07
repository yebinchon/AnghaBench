; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_sr_oa_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_sr_oa_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_workload = type { i64, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@EU_PERF_CNTL0 = common dso_local global i32 0, align 4
@EU_PERF_CNTL1 = common dso_local global i32 0, align 4
@EU_PERF_CNTL2 = common dso_local global i32 0, align 4
@EU_PERF_CNTL3 = common dso_local global i32 0, align 4
@EU_PERF_CNTL4 = common dso_local global i32 0, align 4
@EU_PERF_CNTL5 = common dso_local global i32 0, align 4
@EU_PERF_CNTL6 = common dso_local global i32 0, align 4
@RCS0 = common dso_local global i64 0, align 8
@GEN8_OACTXCONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu_workload*, i32*, i32)* @sr_oa_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sr_oa_regs(%struct.intel_vgpu_workload* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_vgpu_workload*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [7 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_vgpu_workload* %0, %struct.intel_vgpu_workload** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %4, align 8
  %16 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %20, align 8
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %7, align 8
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %30 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %31 = load i32, i32* @EU_PERF_CNTL0, align 4
  %32 = call i32 @i915_mmio_reg_offset(i32 %31)
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds i32, i32* %30, i64 1
  %34 = load i32, i32* @EU_PERF_CNTL1, align 4
  %35 = call i32 @i915_mmio_reg_offset(i32 %34)
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds i32, i32* %33, i64 1
  %37 = load i32, i32* @EU_PERF_CNTL2, align 4
  %38 = call i32 @i915_mmio_reg_offset(i32 %37)
  store i32 %38, i32* %36, align 4
  %39 = getelementptr inbounds i32, i32* %36, i64 1
  %40 = load i32, i32* @EU_PERF_CNTL3, align 4
  %41 = call i32 @i915_mmio_reg_offset(i32 %40)
  store i32 %41, i32* %39, align 4
  %42 = getelementptr inbounds i32, i32* %39, i64 1
  %43 = load i32, i32* @EU_PERF_CNTL4, align 4
  %44 = call i32 @i915_mmio_reg_offset(i32 %43)
  store i32 %44, i32* %42, align 4
  %45 = getelementptr inbounds i32, i32* %42, i64 1
  %46 = load i32, i32* @EU_PERF_CNTL5, align 4
  %47 = call i32 @i915_mmio_reg_offset(i32 %46)
  store i32 %47, i32* %45, align 4
  %48 = getelementptr inbounds i32, i32* %45, i64 1
  %49 = load i32, i32* @EU_PERF_CNTL6, align 4
  %50 = call i32 @i915_mmio_reg_offset(i32 %49)
  store i32 %50, i32* %48, align 4
  %51 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %4, align 8
  %52 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RCS0, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %3
  br label %149

57:                                               ; preds = %3
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %57
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %4, align 8
  %68 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %93, %60
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %4, align 8
  %72 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ARRAY_SIZE(i32* %73)
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %78, 2
  %80 = add nsw i32 %77, %79
  store i32 %80, i32* %12, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %4, align 8
  %88 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %76
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %69

96:                                               ; preds = %69
  br label %149

97:                                               ; preds = %57
  %98 = load i32, i32* @GEN8_OACTXCONTROL, align 4
  %99 = call i32 @i915_mmio_reg_offset(i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %4, align 8
  %105 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 %106, i32* %111, align 4
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %145, %97
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %4, align 8
  %115 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @ARRAY_SIZE(i32* %116)
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %112
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = mul nsw i32 %121, 2
  %123 = add nsw i32 %120, %122
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %128, i32* %132, align 4
  %133 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %4, align 8
  %134 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  store i32 %139, i32* %144, align 4
  br label %145

145:                                              ; preds = %119
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %112

148:                                              ; preds = %112
  br label %149

149:                                              ; preds = %56, %148, %96
  ret void
}

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
