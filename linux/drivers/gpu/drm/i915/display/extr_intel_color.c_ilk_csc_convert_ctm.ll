; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_ilk_csc_convert_ctm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_ilk_csc_convert_ctm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_color_ctm* }
%struct.drm_color_ctm = type { i64* }

@CTM_COEFF_4_0 = common dso_local global i64 0, align 8
@CTM_COEFF_0_125 = common dso_local global i64 0, align 8
@CTM_COEFF_0_25 = common dso_local global i64 0, align 8
@CTM_COEFF_0_5 = common dso_local global i64 0, align 8
@CTM_COEFF_1_0 = common dso_local global i64 0, align 8
@CTM_COEFF_2_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, i32*)* @ilk_csc_convert_ctm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_csc_convert_ctm(%struct.intel_crtc_state* %0, i32* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drm_color_ctm*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [9 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %14, align 8
  store %struct.drm_color_ctm* %15, %struct.drm_color_ctm** %5, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %17 = call i64 @ilk_csc_limited_range(%struct.intel_crtc_state* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = getelementptr inbounds [9 x i64], [9 x i64]* %7, i64 0, i64 0
  %21 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %5, align 8
  %22 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = call i64* @ctm_mult_by_limited(i64* %20, i64* %23)
  store i64* %24, i64** %6, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %5, align 8
  %27 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %6, align 8
  br label %29

29:                                               ; preds = %25, %19
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %146, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 9
  br i1 %32, label %33, label %149

33:                                               ; preds = %30
  %34 = load i64*, i64** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = and i64 9223372036854775807, %38
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @CTM_COEFF_4_0, align 8
  %42 = sub nsw i64 %41, 1
  %43 = call i64 @clamp_val(i64 %40, i32 0, i64 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 0, i32* %47, align 4
  %48 = load i64*, i64** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @CTM_COEFF_NEGATIVE(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %33
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, 32768
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %33
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @CTM_COEFF_0_125, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @ILK_CSC_COEFF_FP(i64 %67, i32 12)
  %69 = or i32 12288, %68
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 4
  br label %145

76:                                               ; preds = %62
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @CTM_COEFF_0_25, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @ILK_CSC_COEFF_FP(i64 %81, i32 11)
  %83 = or i32 8192, %82
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 4
  br label %144

90:                                               ; preds = %76
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @CTM_COEFF_0_5, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @ILK_CSC_COEFF_FP(i64 %95, i32 10)
  %97 = or i32 4096, %96
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %97
  store i32 %103, i32* %101, align 4
  br label %143

104:                                              ; preds = %90
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* @CTM_COEFF_1_0, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @ILK_CSC_COEFF_FP(i64 %109, i32 9)
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %110
  store i32 %116, i32* %114, align 4
  br label %142

117:                                              ; preds = %104
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @CTM_COEFF_2_0, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @ILK_CSC_COEFF_FP(i64 %122, i32 8)
  %124 = or i32 28672, %123
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %124
  store i32 %130, i32* %128, align 4
  br label %141

131:                                              ; preds = %117
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @ILK_CSC_COEFF_FP(i64 %132, i32 7)
  %134 = or i32 24576, %133
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %134
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %131, %121
  br label %142

142:                                              ; preds = %141, %108
  br label %143

143:                                              ; preds = %142, %94
  br label %144

144:                                              ; preds = %143, %80
  br label %145

145:                                              ; preds = %144, %66
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %30

149:                                              ; preds = %30
  ret void
}

declare dso_local i64 @ilk_csc_limited_range(%struct.intel_crtc_state*) #1

declare dso_local i64* @ctm_mult_by_limited(i64*, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i64) #1

declare dso_local i64 @CTM_COEFF_NEGATIVE(i64) #1

declare dso_local i32 @ILK_CSC_COEFF_FP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
