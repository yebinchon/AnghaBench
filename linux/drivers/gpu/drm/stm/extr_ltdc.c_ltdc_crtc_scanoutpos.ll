; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_crtc_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_crtc_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.ltdc_device* }
%struct.ltdc_device = type { i32 }
%struct.drm_display_mode = type { i32 }

@LTDC_CPSR = common dso_local global i32 0, align 4
@CPSR_CYPOS = common dso_local global i32 0, align 4
@LTDC_BPCR = common dso_local global i32 0, align 4
@BPCR_AVBP = common dso_local global i32 0, align 4
@LTDC_AWCR = common dso_local global i32 0, align 4
@AWCR_AAH = common dso_local global i32 0, align 4
@LTDC_TWCR = common dso_local global i32 0, align 4
@TWCR_TOTALH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ltdc_crtc_scanoutpos(%struct.drm_device* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, %struct.drm_display_mode* %7) #0 {
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.drm_display_mode*, align 8
  %17 = alloca %struct.ltdc_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.drm_display_mode* %7, %struct.drm_display_mode** %16, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 1
  %24 = load %struct.ltdc_device*, %struct.ltdc_device** %23, align 8
  store %struct.ltdc_device* %24, %struct.ltdc_device** %17, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = call i32 (...) @ktime_get()
  %29 = load i32*, i32** %14, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %8
  %31 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @pm_runtime_active(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %81

36:                                               ; preds = %30
  %37 = load %struct.ltdc_device*, %struct.ltdc_device** %17, align 8
  %38 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @LTDC_CPSR, align 4
  %41 = call i32 @reg_read(i32 %39, i32 %40)
  %42 = load i32, i32* @CPSR_CYPOS, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %18, align 4
  %44 = load %struct.ltdc_device*, %struct.ltdc_device** %17, align 8
  %45 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @LTDC_BPCR, align 4
  %48 = call i32 @reg_read(i32 %46, i32 %47)
  %49 = load i32, i32* @BPCR_AVBP, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %19, align 4
  %51 = load %struct.ltdc_device*, %struct.ltdc_device** %17, align 8
  %52 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @LTDC_AWCR, align 4
  %55 = call i32 @reg_read(i32 %53, i32 %54)
  %56 = load i32, i32* @AWCR_AAH, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %20, align 4
  %58 = load %struct.ltdc_device*, %struct.ltdc_device** %17, align 8
  %59 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LTDC_TWCR, align 4
  %62 = call i32 @reg_read(i32 %60, i32 %61)
  %63 = load i32, i32* @TWCR_TOTALH, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %36
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %21, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* %19, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i32*, i32** %12, align 8
  store i32 %73, i32* %74, align 4
  br label %80

75:                                               ; preds = %36
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %19, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32*, i32** %12, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %68
  br label %83

81:                                               ; preds = %30
  %82 = load i32*, i32** %12, align 8
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %80
  %84 = load i32*, i32** %13, align 8
  store i32 0, i32* %84, align 4
  %85 = load i32*, i32** %15, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = call i32 (...) @ktime_get()
  %89 = load i32*, i32** %15, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %83
  ret i32 1
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @pm_runtime_active(i32) #1

declare dso_local i32 @reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
