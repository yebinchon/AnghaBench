; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_crtc_update_clut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_crtc_update_clut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ltdc_device = type { i32 }
%struct.drm_color_lut = type { i32, i32, i32 }

@CLUT_SIZE = common dso_local global i32 0, align 4
@LTDC_L1CLUTWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @ltdc_crtc_update_clut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltdc_crtc_update_clut(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.ltdc_device*, align 8
  %4 = alloca %struct.drm_color_lut*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = call %struct.ltdc_device* @crtc_to_ltdc(%struct.drm_crtc* %7)
  store %struct.ltdc_device* %8, %struct.ltdc_device** %3, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %1
  br label %66

23:                                               ; preds = %15
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %25 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.drm_color_lut*
  store %struct.drm_color_lut* %31, %struct.drm_color_lut** %4, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %61, %23
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @CLUT_SIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %38 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = and i32 %40, 16711680
  %42 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %43 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 65280
  %46 = or i32 %41, %45
  %47 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %48 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 8
  %51 = or i32 %46, %50
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 24
  %54 = or i32 %51, %53
  store i32 %54, i32* %5, align 4
  %55 = load %struct.ltdc_device*, %struct.ltdc_device** %3, align 8
  %56 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LTDC_L1CLUTWR, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @reg_write(i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %36
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load %struct.drm_color_lut*, %struct.drm_color_lut** %4, align 8
  %65 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %64, i32 1
  store %struct.drm_color_lut* %65, %struct.drm_color_lut** %4, align 8
  br label %32

66:                                               ; preds = %22, %32
  ret void
}

declare dso_local %struct.ltdc_device* @crtc_to_ltdc(%struct.drm_crtc*) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
