; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_g4x_find_best_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_g4x_find_best_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_limit = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.intel_crtc_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.dpll = type { i32, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_limit*, %struct.intel_crtc_state*, i32, i32, %struct.dpll*, %struct.dpll*)* @g4x_find_best_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_find_best_dpll(%struct.intel_limit* %0, %struct.intel_crtc_state* %1, i32 %2, i32 %3, %struct.dpll* %4, %struct.dpll* %5) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.intel_limit* %0, %struct.intel_limit** %7, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dpll* %4, %struct.dpll** %11, align 8
  store %struct.dpll* %5, %struct.dpll** %12, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  store %struct.drm_device* %24, %struct.drm_device** %13, align 8
  store i32 0, i32* %16, align 4
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 8
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 9
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %17, align 4
  %30 = load %struct.dpll*, %struct.dpll** %12, align 8
  %31 = call i32 @memset(%struct.dpll* %30, i32 0, i32 48)
  %32 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @i9xx_select_p2_div(%struct.intel_limit* %32, %struct.intel_crtc_state* %33, i32 %34)
  %36 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 5
  store i32 %35, i32* %36, align 8
  %37 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %38 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %15, align 4
  %41 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %42 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  br label %46

46:                                               ; preds = %135, %6
  %47 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %15, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %139

51:                                               ; preds = %46
  %52 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %53 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 1
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %130, %51
  %58 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %61 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %59, %63
  br i1 %64, label %65, label %134

65:                                               ; preds = %57
  %66 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %67 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 2
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %125, %65
  %72 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %75 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %73, %77
  br i1 %78, label %79, label %129

79:                                               ; preds = %71
  %80 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %81 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 3
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %120, %79
  %86 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.intel_limit*, %struct.intel_limit** %7, align 8
  %89 = getelementptr inbounds %struct.intel_limit, %struct.intel_limit* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sge i64 %87, %91
  br i1 %92, label %93, label %124

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
  br label %120

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %104, %106
  %108 = call i32 @abs(i64 %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = load %struct.dpll*, %struct.dpll** %12, align 8
  %114 = bitcast %struct.dpll* %113 to i8*
  %115 = bitcast %struct.dpll* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 48, i1 false)
  %116 = load i32, i32* %18, align 4
  store i32 %116, i32* %17, align 4
  %117 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %119

119:                                              ; preds = %112, %102
  br label %120

120:                                              ; preds = %119, %101
  %121 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %121, align 8
  br label %85

124:                                              ; preds = %85
  br label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, -1
  store i64 %128, i64* %126, align 8
  br label %71

129:                                              ; preds = %71
  br label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, -1
  store i64 %133, i64* %131, align 8
  br label %57

134:                                              ; preds = %57
  br label %135

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct.dpll, %struct.dpll* %14, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %46

139:                                              ; preds = %46
  %140 = load i32, i32* %16, align 4
  ret i32 %140
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
