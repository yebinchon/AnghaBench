; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_cherryview_load_csc_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_cherryview_load_csc_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.drm_color_ctm* }
%struct.drm_color_ctm = type { i64* }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@CTM_COEFF_8_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @cherryview_load_csc_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cherryview_load_csc_matrix(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_color_ctm*, align 8
  %7 = alloca [9 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.intel_crtc* @to_intel_crtc(i32 %13)
  store %struct.intel_crtc* %14, %struct.intel_crtc** %3, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %4, align 8
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %133

28:                                               ; preds = %1
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %30 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %33, align 8
  store %struct.drm_color_ctm* %34, %struct.drm_color_ctm** %6, align 8
  %35 = bitcast [9 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 36, i1 false)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %88, %28
  %37 = load i32, i32* %8, align 4
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %91

41:                                               ; preds = %36
  %42 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %6, align 8
  %43 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = and i64 9223372036854775807, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 524288
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i64, i64* @CTM_COEFF_8_0, align 8
  %55 = sub nsw i64 %54, 1
  %56 = call i32 @clamp_val(i32 %53, i32 0, i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %6, align 8
  %58 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = and i64 %63, -9223372036854775808
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %41
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %68
  store i32 32768, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %41
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, 32
  %73 = and i32 %72, 7
  %74 = shl i32 %73, 12
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %9, align 4
  %81 = ashr i32 %80, 20
  %82 = and i32 %81, 4095
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %70
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %36

91:                                               ; preds = %36
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @CGM_PIPE_CSC_COEFF01(i32 %92)
  %94 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 16
  %97 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = or i32 %96, %98
  %100 = call i32 @I915_WRITE(i32 %93, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @CGM_PIPE_CSC_COEFF23(i32 %101)
  %103 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 16
  %106 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 2
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %105, %107
  %109 = call i32 @I915_WRITE(i32 %102, i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @CGM_PIPE_CSC_COEFF45(i32 %110)
  %112 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 5
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 16
  %115 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 4
  %116 = load i32, i32* %115, align 16
  %117 = or i32 %114, %116
  %118 = call i32 @I915_WRITE(i32 %111, i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @CGM_PIPE_CSC_COEFF67(i32 %119)
  %121 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 7
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 16
  %124 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 6
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %123, %125
  %127 = call i32 @I915_WRITE(i32 %120, i32 %126)
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @CGM_PIPE_CSC_COEFF8(i32 %128)
  %130 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 8
  %131 = load i32, i32* %130, align 16
  %132 = call i32 @I915_WRITE(i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %91, %1
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @CGM_PIPE_MODE(i32 %134)
  %136 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %137 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @I915_WRITE(i32 %135, i32 %138)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @clamp_val(i32, i32, i64) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @CGM_PIPE_CSC_COEFF01(i32) #1

declare dso_local i32 @CGM_PIPE_CSC_COEFF23(i32) #1

declare dso_local i32 @CGM_PIPE_CSC_COEFF45(i32) #1

declare dso_local i32 @CGM_PIPE_CSC_COEFF67(i32) #1

declare dso_local i32 @CGM_PIPE_CSC_COEFF8(i32) #1

declare dso_local i32 @CGM_PIPE_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
