; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_get_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ltdc_device* }
%struct.ltdc_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@LTDC_LCR = common dso_local global i32 0, align 4
@LTDC_MAX_LAYER = common dso_local global i32 0, align 4
@LTDC_GC2R = common dso_local global i32 0, align 4
@GC2R_BW = common dso_local global i32 0, align 4
@LTDC_IDR = common dso_local global i32 0, align 4
@REG_OFS_NONE = common dso_local global i32 0, align 4
@ltdc_pix_fmt_a0 = common dso_local global i32 0, align 4
@REG_OFS_4 = common dso_local global i32 0, align 4
@ltdc_pix_fmt_a1 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @ltdc_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltdc_get_caps(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.ltdc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.ltdc_device*, %struct.ltdc_device** %9, align 8
  store %struct.ltdc_device* %10, %struct.ltdc_device** %4, align 8
  %11 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %12 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LTDC_LCR, align 4
  %15 = call i8* @reg_read(i32 %13, i32 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @LTDC_MAX_LAYER, align 4
  %19 = call i32 @clamp(i32 %17, i32 1, i32 %18)
  %20 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %21 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  store i32 %19, i32* %22, align 4
  %23 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %24 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LTDC_GC2R, align 4
  %27 = call i8* @reg_read(i32 %25, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @GC2R_BW, align 4
  %31 = and i32 %29, %30
  %32 = ashr i32 %31, 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 8, %33
  %35 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %36 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %39 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @LTDC_IDR, align 4
  %42 = call i8* @reg_read(i32 %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %45 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %48 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %91 [
    i32 130, label %51
    i32 129, label %51
    i32 128, label %76
  ]

51:                                               ; preds = %1, %1
  %52 = load i32, i32* @REG_OFS_NONE, align 4
  %53 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %54 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @ltdc_pix_fmt_a0, align 4
  %57 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %58 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %61 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  %63 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %64 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i32 90000000, i32* %65, align 4
  %66 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %67 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 130
  br i1 %70, label %71, label %75

71:                                               ; preds = %51
  %72 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %73 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i32 65000000, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %51
  br label %94

76:                                               ; preds = %1
  %77 = load i32, i32* @REG_OFS_4, align 4
  %78 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %79 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @ltdc_pix_fmt_a1, align 4
  %82 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %83 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  store i32 %81, i32* %84, align 4
  %85 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %86 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  store i32 0, i32* %87, align 4
  %88 = load %struct.ltdc_device*, %struct.ltdc_device** %4, align 8
  %89 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store i32 150000000, i32* %90, align 4
  br label %94

91:                                               ; preds = %1
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %95

94:                                               ; preds = %76, %75
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i8* @reg_read(i32, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
