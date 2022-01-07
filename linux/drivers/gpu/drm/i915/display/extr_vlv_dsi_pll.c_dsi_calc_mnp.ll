; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_dsi_calc_mnp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi_pll.c_dsi_calc_mnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"DSI CLK Out of Range\0A\00", align 1
@ECHRNG = common dso_local global i32 0, align 4
@DSI_PLL_P1_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@DSI_PLL_N1_DIV_SHIFT = common dso_local global i32 0, align 4
@lfsr_converts = common dso_local global i64* null, align 8
@DSI_PLL_M1_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_crtc_state*, i32)* @dsi_calc_mnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_calc_mnp(%struct.drm_i915_private* %0, %struct.intel_crtc_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 2, i32* %10, align 4
  store i32 6, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 300000
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 1150000
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %3
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ECHRNG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %124

30:                                               ; preds = %23
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %32 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 100000, i32* %18, align 4
  store i32 4, i32* %13, align 4
  store i32 70, i32* %8, align 4
  store i32 96, i32* %9, align 4
  br label %36

35:                                               ; preds = %30
  store i32 25000, i32* %18, align 4
  store i32 1, i32* %13, align 4
  store i32 62, i32* %8, align 4
  store i32 92, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %18, align 4
  %42 = mul i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %13, align 4
  %45 = mul i32 %43, %44
  %46 = udiv i32 %42, %45
  %47 = sub i32 %39, %46
  %48 = call i32 @abs(i32 %47) #3
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %94, %36
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ule i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i1 [ false, %50 ], [ %56, %54 ]
  br i1 %58, label %59, label %97

59:                                               ; preds = %57
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %90, %59
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ule i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %65, %61
  %69 = phi i1 [ false, %61 ], [ %67, %65 ]
  br i1 %69, label %70, label %93

70:                                               ; preds = %68
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %18, align 4
  %73 = mul i32 %71, %72
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %13, align 4
  %76 = mul i32 %74, %75
  %77 = udiv i32 %73, %76
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %19, align 4
  %80 = sub nsw i32 %78, %79
  %81 = call i32 @abs(i32 %80) #3
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %70
  %86 = load i32, i32* %20, align 4
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %85, %70
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %14, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %61

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %50

97:                                               ; preds = %57
  %98 = load i32, i32* @DSI_PLL_P1_POST_DIV_SHIFT, align 4
  %99 = load i32, i32* %16, align 4
  %100 = add i32 %98, %99
  %101 = sub i32 %100, 2
  %102 = shl i32 1, %101
  %103 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %104 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @ffs(i32 %106)
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* @DSI_PLL_N1_DIV_SHIFT, align 4
  %110 = shl i32 %108, %109
  %111 = load i64*, i64** @lfsr_converts, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sub i32 %112, 62
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %111, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @DSI_PLL_M1_DIV_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = or i32 %110, %119
  %121 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %122 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 4
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %97, %26
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
