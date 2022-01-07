; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_gma_to_gpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_gma_to_gpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_mm = type { i64, %struct.TYPE_4__, %struct.intel_vgpu* }
%struct.TYPE_4__ = type { i64 }
%struct.intel_vgpu = type { i32, %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intel_gvt_gtt_gma_ops*, %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_gma_ops = type { i64 (i64)*, i64 (i64)*, i64 (i64)*, i64 (i64)*, i32 (i64)*, i32 (i64)* }
%struct.intel_gvt_gtt_pte_ops = type { i64 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry.0*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type opaque
%struct.intel_gvt_gtt_entry.1 = type { i32 }

@INTEL_GVT_INVALID_ADDR = common dso_local global i64 0, align 8
@INTEL_GVT_MM_GGTT = common dso_local global i64 0, align 8
@INTEL_GVT_MM_PPGTT = common dso_local global i64 0, align 8
@I915_GTT_PAGE_SHIFT = common dso_local global i64 0, align 8
@I915_GTT_PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ggtt\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GMA 0x%lx is not present\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ppgtt\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"invalid mm type: %d gma %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @intel_vgpu_gma_to_gpa(%struct.intel_vgpu_mm* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.intel_vgpu_mm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca %struct.intel_gvt*, align 8
  %8 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %9 = alloca %struct.intel_gvt_gtt_gma_ops*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [4 x i64], align 16
  %12 = alloca %struct.intel_gvt_gtt_entry.1, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_vgpu_mm* %0, %struct.intel_vgpu_mm** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %16, i32 0, i32 2
  %18 = load %struct.intel_vgpu*, %struct.intel_vgpu** %17, align 8
  store %struct.intel_vgpu* %18, %struct.intel_vgpu** %6, align 8
  %19 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %20 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %19, i32 0, i32 1
  %21 = load %struct.intel_gvt*, %struct.intel_gvt** %20, align 8
  store %struct.intel_gvt* %21, %struct.intel_gvt** %7, align 8
  %22 = load %struct.intel_gvt*, %struct.intel_gvt** %7, align 8
  %23 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %24, align 8
  store %struct.intel_gvt_gtt_pte_ops* %25, %struct.intel_gvt_gtt_pte_ops** %8, align 8
  %26 = load %struct.intel_gvt*, %struct.intel_gvt** %7, align 8
  %27 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.intel_gvt_gtt_gma_ops*, %struct.intel_gvt_gtt_gma_ops** %28, align 8
  store %struct.intel_gvt_gtt_gma_ops* %29, %struct.intel_gvt_gtt_gma_ops** %9, align 8
  %30 = load i64, i64* @INTEL_GVT_INVALID_ADDR, align 8
  store i64 %30, i64* %10, align 8
  store i32 0, i32* %14, align 4
  %31 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @INTEL_GVT_MM_GGTT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @INTEL_GVT_MM_PPGTT, align 8
  %41 = icmp ne i64 %39, %40
  br label %42

42:                                               ; preds = %36, %2
  %43 = phi i1 [ false, %2 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @GEM_BUG_ON(i32 %44)
  %46 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %47 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @INTEL_GVT_MM_GGTT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %42
  %52 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @vgpu_gmadr_is_valid(%struct.intel_vgpu* %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %196

57:                                               ; preds = %51
  %58 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %59 = load %struct.intel_gvt_gtt_gma_ops*, %struct.intel_gvt_gtt_gma_ops** %9, align 8
  %60 = getelementptr inbounds %struct.intel_gvt_gtt_gma_ops, %struct.intel_gvt_gtt_gma_ops* %59, i32 0, i32 5
  %61 = load i32 (i64)*, i32 (i64)** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 %61(i64 %62)
  %64 = call i32 @ggtt_get_guest_entry(%struct.intel_vgpu_mm* %58, %struct.intel_gvt_gtt_entry.1* %12, i32 %63)
  %65 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %8, align 8
  %66 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %65, i32 0, i32 0
  %67 = load i64 (%struct.intel_gvt_gtt_entry*)*, i64 (%struct.intel_gvt_gtt_entry*)** %66, align 8
  %68 = bitcast %struct.intel_gvt_gtt_entry.1* %12 to %struct.intel_gvt_gtt_entry*
  %69 = call i64 %67(%struct.intel_gvt_gtt_entry* %68)
  %70 = load i64, i64* @I915_GTT_PAGE_SHIFT, align 8
  %71 = shl i64 %69, %70
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @I915_GTT_PAGE_MASK, align 8
  %74 = xor i64 %73, -1
  %75 = and i64 %72, %74
  %76 = add i64 %71, %75
  store i64 %76, i64* %10, align 8
  %77 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %78 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @trace_gma_translate(i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i64 0, i64 %80, i64 %81)
  br label %194

83:                                               ; preds = %42
  %84 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %85 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  switch i64 %87, label %135 [
    i64 128, label %88
    i64 129, label %115
  ]

88:                                               ; preds = %83
  %89 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %90 = call i32 @ppgtt_get_shadow_root_entry(%struct.intel_vgpu_mm* %89, %struct.intel_gvt_gtt_entry.1* %12, i32 0)
  %91 = load %struct.intel_gvt_gtt_gma_ops*, %struct.intel_gvt_gtt_gma_ops** %9, align 8
  %92 = getelementptr inbounds %struct.intel_gvt_gtt_gma_ops, %struct.intel_gvt_gtt_gma_ops* %91, i32 0, i32 0
  %93 = load i64 (i64)*, i64 (i64)** %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i64 %93(i64 %94)
  %96 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %95, i64* %96, align 16
  %97 = load %struct.intel_gvt_gtt_gma_ops*, %struct.intel_gvt_gtt_gma_ops** %9, align 8
  %98 = getelementptr inbounds %struct.intel_gvt_gtt_gma_ops, %struct.intel_gvt_gtt_gma_ops* %97, i32 0, i32 1
  %99 = load i64 (i64)*, i64 (i64)** %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i64 %99(i64 %100)
  %102 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  store i64 %101, i64* %102, align 8
  %103 = load %struct.intel_gvt_gtt_gma_ops*, %struct.intel_gvt_gtt_gma_ops** %9, align 8
  %104 = getelementptr inbounds %struct.intel_gvt_gtt_gma_ops, %struct.intel_gvt_gtt_gma_ops* %103, i32 0, i32 2
  %105 = load i64 (i64)*, i64 (i64)** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = call i64 %105(i64 %106)
  %108 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 2
  store i64 %107, i64* %108, align 16
  %109 = load %struct.intel_gvt_gtt_gma_ops*, %struct.intel_gvt_gtt_gma_ops** %9, align 8
  %110 = getelementptr inbounds %struct.intel_gvt_gtt_gma_ops, %struct.intel_gvt_gtt_gma_ops* %109, i32 0, i32 3
  %111 = load i64 (i64)*, i64 (i64)** %110, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call i64 %111(i64 %112)
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 3
  store i64 %113, i64* %114, align 8
  store i32 4, i32* %14, align 4
  br label %137

115:                                              ; preds = %83
  %116 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %117 = load %struct.intel_gvt_gtt_gma_ops*, %struct.intel_gvt_gtt_gma_ops** %9, align 8
  %118 = getelementptr inbounds %struct.intel_gvt_gtt_gma_ops, %struct.intel_gvt_gtt_gma_ops* %117, i32 0, i32 4
  %119 = load i32 (i64)*, i32 (i64)** %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = call i32 %119(i64 %120)
  %122 = call i32 @ppgtt_get_shadow_root_entry(%struct.intel_vgpu_mm* %116, %struct.intel_gvt_gtt_entry.1* %12, i32 %121)
  %123 = load %struct.intel_gvt_gtt_gma_ops*, %struct.intel_gvt_gtt_gma_ops** %9, align 8
  %124 = getelementptr inbounds %struct.intel_gvt_gtt_gma_ops, %struct.intel_gvt_gtt_gma_ops* %123, i32 0, i32 2
  %125 = load i64 (i64)*, i64 (i64)** %124, align 8
  %126 = load i64, i64* %5, align 8
  %127 = call i64 %125(i64 %126)
  %128 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  store i64 %127, i64* %128, align 16
  %129 = load %struct.intel_gvt_gtt_gma_ops*, %struct.intel_gvt_gtt_gma_ops** %9, align 8
  %130 = getelementptr inbounds %struct.intel_gvt_gtt_gma_ops, %struct.intel_gvt_gtt_gma_ops* %129, i32 0, i32 3
  %131 = load i64 (i64)*, i64 (i64)** %130, align 8
  %132 = load i64, i64* %5, align 8
  %133 = call i64 %131(i64 %132)
  %134 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 1
  store i64 %133, i64* %134, align 8
  store i32 2, i32* %14, align 4
  br label %137

135:                                              ; preds = %83
  %136 = call i32 @GEM_BUG_ON(i32 1)
  br label %137

137:                                              ; preds = %135, %115, %88
  store i32 0, i32* %13, align 4
  br label %138

138:                                              ; preds = %168, %137
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %171

142:                                              ; preds = %138
  %143 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %14, align 4
  %150 = sub nsw i32 %149, 1
  %151 = icmp eq i32 %148, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @ppgtt_get_next_level_entry(%struct.intel_vgpu_mm* %143, %struct.intel_gvt_gtt_entry.1* %12, i64 %147, i32 %152)
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %142
  br label %196

157:                                              ; preds = %142
  %158 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %8, align 8
  %159 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %158, i32 0, i32 1
  %160 = load i32 (%struct.intel_gvt_gtt_entry.0*)*, i32 (%struct.intel_gvt_gtt_entry.0*)** %159, align 8
  %161 = bitcast %struct.intel_gvt_gtt_entry.1* %12 to %struct.intel_gvt_gtt_entry.0*
  %162 = call i32 %160(%struct.intel_gvt_gtt_entry.0* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %157
  %165 = load i64, i64* %5, align 8
  %166 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %165)
  br label %196

167:                                              ; preds = %157
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %138

171:                                              ; preds = %138
  %172 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %8, align 8
  %173 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %172, i32 0, i32 0
  %174 = load i64 (%struct.intel_gvt_gtt_entry*)*, i64 (%struct.intel_gvt_gtt_entry*)** %173, align 8
  %175 = bitcast %struct.intel_gvt_gtt_entry.1* %12 to %struct.intel_gvt_gtt_entry*
  %176 = call i64 %174(%struct.intel_gvt_gtt_entry* %175)
  %177 = load i64, i64* @I915_GTT_PAGE_SHIFT, align 8
  %178 = shl i64 %176, %177
  %179 = load i64, i64* %5, align 8
  %180 = load i64, i64* @I915_GTT_PAGE_MASK, align 8
  %181 = xor i64 %180, -1
  %182 = and i64 %179, %181
  %183 = add i64 %178, %182
  store i64 %183, i64* %10, align 8
  %184 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %185 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %188 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %5, align 8
  %192 = load i64, i64* %10, align 8
  %193 = call i32 @trace_gma_translate(i32 %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 %190, i64 %191, i64 %192)
  br label %194

194:                                              ; preds = %171, %57
  %195 = load i64, i64* %10, align 8
  store i64 %195, i64* %3, align 8
  br label %203

196:                                              ; preds = %164, %156, %56
  %197 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %198 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %5, align 8
  %201 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %199, i64 %200)
  %202 = load i64, i64* @INTEL_GVT_INVALID_ADDR, align 8
  store i64 %202, i64* %3, align 8
  br label %203

203:                                              ; preds = %196, %194
  %204 = load i64, i64* %3, align 8
  ret i64 %204
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @vgpu_gmadr_is_valid(%struct.intel_vgpu*, i64) #1

declare dso_local i32 @ggtt_get_guest_entry(%struct.intel_vgpu_mm*, %struct.intel_gvt_gtt_entry.1*, i32) #1

declare dso_local i32 @trace_gma_translate(i32, i8*, i32, i64, i64, i64) #1

declare dso_local i32 @ppgtt_get_shadow_root_entry(%struct.intel_vgpu_mm*, %struct.intel_gvt_gtt_entry.1*, i32) #1

declare dso_local i32 @ppgtt_get_next_level_entry(%struct.intel_vgpu_mm*, %struct.intel_gvt_gtt_entry.1*, i64, i32) #1

declare dso_local i32 @gvt_dbg_core(i8*, i64) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
