; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_pnv_find_best_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_pnv_find_best_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_limit = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.intel_crtc_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.dpll = type { i64, i64, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_limit*, %struct.intel_crtc_state*, i32, i32, %struct.dpll*, %struct.dpll*)* @pnv_find_best_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_find_best_dpll(%struct.intel_limit* %0, %struct.intel_crtc_state* %1, i32 %2, i32 %3, %struct.dpll* %4, %struct.dpll* %5) #0 {
  %7 = alloca %struct.intel_limit*, align 8
  %8 = alloca %struct.intel_crtc_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dpll*, align 8
  %12 = alloca %struct.dpll*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.dpll, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.intel_limit* %0, %struct.intel_limit** %7, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dpll* %4, %struct.dpll** %11, align 8
  store %struct.dpll* %5, %struct.dpll** %12, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %18 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %13, align 8
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %15, align 4
  %24 = load %struct.dpll*, %struct.dpll** %12, align 8
  %25 = call i32 @memset(%struct.dpll* %24, i32 0, i32 56)
  %26 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @i9xx_select_p2_div(%struct.intel_limit* %26, %struct.intel_crtc_state* %27, i32 %28)
  %30 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 6
  store i32 %29, i32* %30, align 8
  %31 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %32 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %137, %6
  %37 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %40 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %38, %42
  br i1 %43, label %44, label %141

44:                                               ; preds = %36
  %45 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %46 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %132, %44
  %51 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %54 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sle i64 %52, %56
  br i1 %57, label %58, label %136

58:                                               ; preds = %50
  %59 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %60 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 2
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %127, %58
  %65 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %68 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sle i64 %66, %70
  br i1 %71, label %72, label %131

72:                                               ; preds = %64
  %73 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %74 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 3
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %122, %72
  %79 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %82 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sle i64 %80, %84
  br i1 %85, label %86, label %126

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @pnv_calc_dpll_params(i32 %87, %struct.dpll* %14)
  %89 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %90 = call i32 @to_i915(%struct.drm_device* %89)
  %91 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %92 = call i32 @intel_PLL_is_valid(i32 %90, %struct.intel_limit* %91, %struct.dpll* %14)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  br label %122

95:                                               ; preds = %86
  %96 = load %struct.dpll*, %struct.dpll** %11, align 8
  %97 = icmp ne %struct.dpll* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.dpll*, %struct.dpll** %11, align 8
  %102 = getelementptr inbounds %struct.dpll, %struct.dpll* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %122

106:                                              ; preds = %98, %95
  %107 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %108, %110
  %112 = call i32 @abs(i64 %111)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %106
  %117 = load %struct.dpll*, %struct.dpll** %12, align 8
  %118 = bitcast %struct.dpll* %117 to i8*
  %119 = bitcast %struct.dpll* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 56, i1 false)
  %120 = load i32, i32* %16, align 4
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %116, %106
  br label %122

122:                                              ; preds = %121, %105, %94
  %123 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %78

126:                                              ; preds = %78
  br label %127

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  br label %64

131:                                              ; preds = %64
  br label %132

132:                                              ; preds = %131
  %133 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %133, align 8
  br label %50

136:                                              ; preds = %50
  br label %137

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %138, align 8
  br label %36

141:                                              ; preds = %36
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %142, %143
  %145 = zext i1 %144 to i32
  ret i32 %145
}

declare dso_local i32 @memset(%struct.dpll*, i32, i32) #1

declare dso_local i32 @i9xx_select_p2_div(%struct.intel_limit*, %struct.intel_crtc_state*, i32) #1

declare dso_local i32 @pnv_calc_dpll_params(i32, %struct.dpll*) #1

declare dso_local i32 @intel_PLL_is_valid(i32, %struct.intel_limit*, %struct.dpll*) #1

declare dso_local i32 @to_i915(%struct.drm_device*) #1

declare dso_local i32 @abs(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
