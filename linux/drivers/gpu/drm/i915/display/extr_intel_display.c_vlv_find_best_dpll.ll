; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_find_best_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_find_best_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_limit = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.intel_crtc_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.dpll = type { i32, i32, i32, i32, i32, i32 }
%struct.intel_crtc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_limit*, %struct.intel_crtc_state*, i32, i32, %struct.dpll*, %struct.dpll*)* @vlv_find_best_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_find_best_dpll(%struct.intel_limit* %0, %struct.intel_crtc_state* %1, i32 %2, i32 %3, %struct.dpll* %4, %struct.dpll* %5) #0 {
  %7 = alloca %struct.intel_limit*, align 8
  %8 = alloca %struct.intel_crtc_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dpll*, align 8
  %12 = alloca %struct.dpll*, align 8
  %13 = alloca %struct.intel_crtc*, align 8
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca %struct.dpll, align 4
  %16 = alloca i32, align 4
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
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.intel_crtc* @to_intel_crtc(i32 %23)
  store %struct.intel_crtc* %24, %struct.intel_crtc** %13, align 8
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.drm_device*, %struct.drm_device** %27, align 8
  store %struct.drm_device* %28, %struct.drm_device** %14, align 8
  store i32 1000000, i32* %16, align 4
  %29 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %30 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sdiv i32 %33, 19200
  %35 = call i32 @min(i32 %32, i32 %34)
  store i32 %35, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 5
  store i32 %37, i32* %9, align 4
  %38 = load %struct.dpll*, %struct.dpll** %12, align 8
  %39 = call i32 @memset(%struct.dpll* %38, i32 0, i32 24)
  %40 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %41 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %153, %6
  %46 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %157

50:                                               ; preds = %45
  %51 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %52 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %148, %50
  %57 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %60 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %58, %62
  br i1 %63, label %64, label %152

64:                                               ; preds = %56
  %65 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %66 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %138, %64
  %71 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %74 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %72, %76
  br i1 %77, label %78, label %147

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %80, %82
  %84 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 3
  store i32 %83, i32* %84, align 4
  %85 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %86 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 4
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %133, %78
  %91 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %94 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %92, %96
  br i1 %97, label %98, label %137

98:                                               ; preds = %90
  %99 = load i32, i32* %9, align 4
  %100 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %99, %101
  %103 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %102, %104
  %106 = load i32, i32* %10, align 4
  %107 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %106, %108
  %110 = call i32 @DIV_ROUND_CLOSEST(i32 %105, i32 %109)
  %111 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 5
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @vlv_calc_dpll_params(i32 %112, %struct.dpll* %15)
  %114 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %115 = call i32 @to_i915(%struct.drm_device* %114)
  %116 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %117 = call i32 @intel_PLL_is_valid(i32 %115, %struct.intel_limit* %116, %struct.dpll* %15)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %98
  br label %133

120:                                              ; preds = %98
  %121 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.dpll*, %struct.dpll** %12, align 8
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @vlv_PLL_is_optimal(%struct.drm_device* %121, i32 %122, %struct.dpll* %15, %struct.dpll* %123, i32 %124, i32* %19)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %133

128:                                              ; preds = %120
  %129 = load %struct.dpll*, %struct.dpll** %12, align 8
  %130 = bitcast %struct.dpll* %129 to i8*
  %131 = bitcast %struct.dpll* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 24, i1 false)
  %132 = load i32, i32* %19, align 4
  store i32 %132, i32* %16, align 4
  store i32 1, i32* %18, align 4
  br label %133

133:                                              ; preds = %128, %127, %119
  %134 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %90

137:                                              ; preds = %90
  br label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %140, 10
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 2, i32 1
  %144 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, %143
  store i32 %146, i32* %144, align 4
  br label %70

147:                                              ; preds = %70
  br label %148

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %149, align 4
  br label %56

152:                                              ; preds = %56
  br label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %45

157:                                              ; preds = %45
  %158 = load i32, i32* %18, align 4
  ret i32 %158
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memset(%struct.dpll*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @vlv_calc_dpll_params(i32, %struct.dpll*) #1

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
