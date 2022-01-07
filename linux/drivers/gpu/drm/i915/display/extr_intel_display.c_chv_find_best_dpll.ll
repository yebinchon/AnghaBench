; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_find_best_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_find_best_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_limit = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.intel_crtc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dpll = type { i32, i32, i32, i32, i32, i32 }
%struct.intel_crtc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_limit*, %struct.intel_crtc_state*, i32, i32, %struct.dpll*, %struct.dpll*)* @chv_find_best_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_find_best_dpll(%struct.intel_limit* %0, %struct.intel_crtc_state* %1, i32 %2, i32 %3, %struct.dpll* %4, %struct.dpll* %5) #0 {
  %7 = alloca %struct.intel_limit*, align 8
  %8 = alloca %struct.intel_crtc_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dpll*, align 8
  %12 = alloca %struct.dpll*, align 8
  %13 = alloca %struct.intel_crtc*, align 8
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dpll, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.intel_limit* %0, %struct.intel_limit** %7, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dpll* %4, %struct.dpll** %11, align 8
  store %struct.dpll* %5, %struct.dpll** %12, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.intel_crtc* @to_intel_crtc(i32 %23)
  store %struct.intel_crtc* %24, %struct.intel_crtc** %13, align 8
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.drm_device*, %struct.drm_device** %27, align 8
  store %struct.drm_device* %28, %struct.drm_device** %14, align 8
  store i32 0, i32* %18, align 4
  %29 = load %struct.dpll*, %struct.dpll** %12, align 8
  %30 = call i32 @memset(%struct.dpll* %29, i32 0, i32 24)
  store i32 1000000, i32* %15, align 4
  %31 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 1
  store i32 2, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %33, 5
  store i32 %34, i32* %9, align 4
  %35 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %36 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %123, %6
  %41 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %44 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %42, %46
  br i1 %47, label %48, label %127

48:                                               ; preds = %40
  %49 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %50 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %113, %48
  %55 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %58 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %56, %60
  br i1 %61, label %62, label %122

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %64, %66
  %68 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %71, %73
  %75 = call i32 @mul_u32_u32(i32 %69, i32 %74)
  %76 = shl i32 %75, 22
  %77 = load i32, i32* %10, align 4
  %78 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %77, %79
  %81 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %76, i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @INT_MAX, align 4
  %84 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %83, %85
  %87 = icmp sgt i32 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %62
  br label %113

89:                                               ; preds = %62
  %90 = load i32, i32* %17, align 4
  %91 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 5
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @chv_calc_dpll_params(i32 %92, %struct.dpll* %16)
  %94 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %95 = call i32 @to_i915(%struct.drm_device* %94)
  %96 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %97 = call i32 @intel_PLL_is_valid(i32 %95, %struct.intel_limit* %96, %struct.dpll* %16)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  br label %113

100:                                              ; preds = %89
  %101 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.dpll*, %struct.dpll** %12, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @vlv_PLL_is_optimal(%struct.drm_device* %101, i32 %102, %struct.dpll* %16, %struct.dpll* %103, i32 %104, i32* %19)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  br label %113

108:                                              ; preds = %100
  %109 = load %struct.dpll*, %struct.dpll** %12, align 8
  %110 = bitcast %struct.dpll* %109 to i8*
  %111 = bitcast %struct.dpll* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 24, i1 false)
  %112 = load i32, i32* %19, align 4
  store i32 %112, i32* %15, align 4
  store i32 1, i32* %18, align 4
  br label %113

113:                                              ; preds = %108, %107, %99, %88
  %114 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 10
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 2, i32 1
  %119 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, %118
  store i32 %121, i32* %119, align 4
  br label %54

122:                                              ; preds = %54
  br label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 4
  br label %40

127:                                              ; preds = %40
  %128 = load i32, i32* %18, align 4
  ret i32 %128
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @memset(%struct.dpll*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @mul_u32_u32(i32, i32) #1

declare dso_local i32 @chv_calc_dpll_params(i32, %struct.dpll*) #1

declare dso_local i32 @intel_PLL_is_valid(i32, %struct.intel_limit*, %struct.dpll*) #1

declare dso_local i32 @to_i915(%struct.drm_device*) #1

declare dso_local i32 @vlv_PLL_is_optimal(%struct.drm_device*, i32, %struct.dpll*, %struct.dpll*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
