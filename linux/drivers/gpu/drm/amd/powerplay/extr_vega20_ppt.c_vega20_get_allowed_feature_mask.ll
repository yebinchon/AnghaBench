; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_get_allowed_feature_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_get_allowed_feature_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FEATURE_DPM_PREFETCHER_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_GFXCLK_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_UCLK_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_SOCCLK_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_UVD_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_VCE_BIT = common dso_local global i32 0, align 4
@FEATURE_ULV_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_MP0CLK_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_LINK_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_DCEFCLK_BIT = common dso_local global i32 0, align 4
@FEATURE_PPT_BIT = common dso_local global i32 0, align 4
@FEATURE_TDC_BIT = common dso_local global i32 0, align 4
@FEATURE_THERMAL_BIT = common dso_local global i32 0, align 4
@FEATURE_GFX_PER_CU_CG_BIT = common dso_local global i32 0, align 4
@FEATURE_RM_BIT = common dso_local global i32 0, align 4
@FEATURE_ACDC_BIT = common dso_local global i32 0, align 4
@FEATURE_VR0HOT_BIT = common dso_local global i32 0, align 4
@FEATURE_VR1HOT_BIT = common dso_local global i32 0, align 4
@FEATURE_FW_CTF_BIT = common dso_local global i32 0, align 4
@FEATURE_LED_DISPLAY_BIT = common dso_local global i32 0, align 4
@FEATURE_FAN_CONTROL_BIT = common dso_local global i32 0, align 4
@FEATURE_GFX_EDC_BIT = common dso_local global i32 0, align 4
@FEATURE_GFXOFF_BIT = common dso_local global i32 0, align 4
@FEATURE_CG_BIT = common dso_local global i32 0, align 4
@FEATURE_DPM_FCLK_BIT = common dso_local global i32 0, align 4
@FEATURE_XGMI_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32*, i32)* @vega20_get_allowed_feature_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_get_allowed_feature_mask(%struct.smu_context* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %100

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memset(i32* %14, i32 0, i32 %18)
  %20 = load i32, i32* @FEATURE_DPM_PREFETCHER_BIT, align 4
  %21 = call i32 @FEATURE_MASK(i32 %20)
  %22 = load i32, i32* @FEATURE_DPM_GFXCLK_BIT, align 4
  %23 = call i32 @FEATURE_MASK(i32 %22)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @FEATURE_DPM_UCLK_BIT, align 4
  %26 = call i32 @FEATURE_MASK(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @FEATURE_DPM_SOCCLK_BIT, align 4
  %29 = call i32 @FEATURE_MASK(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* @FEATURE_DPM_UVD_BIT, align 4
  %32 = call i32 @FEATURE_MASK(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @FEATURE_DPM_VCE_BIT, align 4
  %35 = call i32 @FEATURE_MASK(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @FEATURE_ULV_BIT, align 4
  %38 = call i32 @FEATURE_MASK(i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* @FEATURE_DPM_MP0CLK_BIT, align 4
  %41 = call i32 @FEATURE_MASK(i32 %40)
  %42 = or i32 %39, %41
  %43 = load i32, i32* @FEATURE_DPM_LINK_BIT, align 4
  %44 = call i32 @FEATURE_MASK(i32 %43)
  %45 = or i32 %42, %44
  %46 = load i32, i32* @FEATURE_DPM_DCEFCLK_BIT, align 4
  %47 = call i32 @FEATURE_MASK(i32 %46)
  %48 = or i32 %45, %47
  %49 = load i32, i32* @FEATURE_PPT_BIT, align 4
  %50 = call i32 @FEATURE_MASK(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* @FEATURE_TDC_BIT, align 4
  %53 = call i32 @FEATURE_MASK(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @FEATURE_THERMAL_BIT, align 4
  %56 = call i32 @FEATURE_MASK(i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* @FEATURE_GFX_PER_CU_CG_BIT, align 4
  %59 = call i32 @FEATURE_MASK(i32 %58)
  %60 = or i32 %57, %59
  %61 = load i32, i32* @FEATURE_RM_BIT, align 4
  %62 = call i32 @FEATURE_MASK(i32 %61)
  %63 = or i32 %60, %62
  %64 = load i32, i32* @FEATURE_ACDC_BIT, align 4
  %65 = call i32 @FEATURE_MASK(i32 %64)
  %66 = or i32 %63, %65
  %67 = load i32, i32* @FEATURE_VR0HOT_BIT, align 4
  %68 = call i32 @FEATURE_MASK(i32 %67)
  %69 = or i32 %66, %68
  %70 = load i32, i32* @FEATURE_VR1HOT_BIT, align 4
  %71 = call i32 @FEATURE_MASK(i32 %70)
  %72 = or i32 %69, %71
  %73 = load i32, i32* @FEATURE_FW_CTF_BIT, align 4
  %74 = call i32 @FEATURE_MASK(i32 %73)
  %75 = or i32 %72, %74
  %76 = load i32, i32* @FEATURE_LED_DISPLAY_BIT, align 4
  %77 = call i32 @FEATURE_MASK(i32 %76)
  %78 = or i32 %75, %77
  %79 = load i32, i32* @FEATURE_FAN_CONTROL_BIT, align 4
  %80 = call i32 @FEATURE_MASK(i32 %79)
  %81 = or i32 %78, %80
  %82 = load i32, i32* @FEATURE_GFX_EDC_BIT, align 4
  %83 = call i32 @FEATURE_MASK(i32 %82)
  %84 = or i32 %81, %83
  %85 = load i32, i32* @FEATURE_GFXOFF_BIT, align 4
  %86 = call i32 @FEATURE_MASK(i32 %85)
  %87 = or i32 %84, %86
  %88 = load i32, i32* @FEATURE_CG_BIT, align 4
  %89 = call i32 @FEATURE_MASK(i32 %88)
  %90 = or i32 %87, %89
  %91 = load i32, i32* @FEATURE_DPM_FCLK_BIT, align 4
  %92 = call i32 @FEATURE_MASK(i32 %91)
  %93 = or i32 %90, %92
  %94 = load i32, i32* @FEATURE_XGMI_BIT, align 4
  %95 = call i32 @FEATURE_MASK(i32 %94)
  %96 = or i32 %93, %95
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %13, %10
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FEATURE_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
