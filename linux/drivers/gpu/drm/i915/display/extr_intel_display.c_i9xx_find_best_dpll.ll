; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_find_best_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_find_best_dpll.c"
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

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_limit*, %struct.intel_crtc_state*, i32, i32, %struct.dpll*, %struct.dpll*)* @i9xx_find_best_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_find_best_dpll(%struct.intel_limit* %0, %struct.intel_crtc_state* %1, i32 %2, i32 %3, %struct.dpll* %4, %struct.dpll* %5) #0 {
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

36:                                               ; preds = %144, %6
  %37 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %40 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %38, %42
  br i1 %43, label %44, label %148

44:                                               ; preds = %36
  %45 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %46 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %139, %44
  %51 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %54 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sle i64 %52, %56
  br i1 %57, label %58, label %143

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %143

65:                                               ; preds = %58
  %66 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %67 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 2
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %134, %65
  %72 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %75 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sle i64 %73, %77
  br i1 %78, label %79, label %138

79:                                               ; preds = %71
  %80 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %81 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 3
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %129, %79
  %86 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %89 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sle i64 %87, %91
  br i1 %92, label %93, label %133

93:                                               ; preds = %85
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @i9xx_calc_dpll_params(i32 %94, %struct.dpll* %14)
  %96 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %97 = call i32 @to_i915(%struct.drm_device* %96)
  %98 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %99 = call i32 @intel_PLL_is_valid(i32 %97, %struct.intel_limit* %98, %struct.dpll* %14)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  br label %129

102:                                              ; preds = %93
  %103 = load %struct.dpll*, %struct.dpll** %11, align 8
  %104 = icmp ne %struct.dpll* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.dpll*, %struct.dpll** %11, align 8
  %109 = getelementptr inbounds %struct.dpll, %struct.dpll* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %129

113:                                              ; preds = %105, %102
  %114 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 %115, %117
  %119 = call i32 @abs(i64 %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %113
  %124 = load %struct.dpll*, %struct.dpll** %12, align 8
  %125 = bitcast %struct.dpll* %124 to i8*
  %126 = bitcast %struct.dpll* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 56, i1 false)
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %123, %113
  br label %129

129:                                              ; preds = %128, %112, %101
  %130 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %130, align 8
  br label %85

133:                                              ; preds = %85
  br label %134

134:                                              ; preds = %133
  %135 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %135, align 8
  br label %71

138:                                              ; preds = %71
  br label %139

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %140, align 8
  br label %50

143:                                              ; preds = %64, %50
  br label %144

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  br label %36

148:                                              ; preds = %36
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %149, %150
  %152 = zext i1 %151 to i32
  ret i32 %152
}

declare dso_local i32 @memset(%struct.dpll*, i32, i32) #1

declare dso_local i32 @i9xx_select_p2_div(%struct.intel_limit*, %struct.intel_crtc_state*, i32) #1

declare dso_local i32 @i9xx_calc_dpll_params(i32, %struct.dpll*) #1

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
