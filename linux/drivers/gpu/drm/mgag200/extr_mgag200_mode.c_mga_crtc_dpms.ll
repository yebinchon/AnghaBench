; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.mga_device* }
%struct.mga_device = type { i32 }

@MGAREG_SEQ_INDEX = common dso_local global i32 0, align 4
@MGAREG_SEQ_DATA = common dso_local global i32 0, align 4
@MGAREG_CRTCEXT_INDEX = common dso_local global i32 0, align 4
@MGAREG_CRTCEXT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @mga_crtc_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_crtc_dpms(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.mga_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.mga_device*, %struct.mga_device** %13, align 8
  store %struct.mga_device* %14, %struct.mga_device** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %22 [
    i32 130, label %16
    i32 129, label %19
    i32 128, label %20
    i32 131, label %21
  ]

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %18 = call i32 @mga_crtc_load_lut(%struct.drm_crtc* %17)
  br label %22

19:                                               ; preds = %2
  store i32 32, i32* %7, align 4
  store i32 16, i32* %8, align 4
  br label %22

20:                                               ; preds = %2
  store i32 32, i32* %7, align 4
  store i32 32, i32* %8, align 4
  br label %22

21:                                               ; preds = %2
  store i32 32, i32* %7, align 4
  store i32 48, i32* %8, align 4
  br label %22

22:                                               ; preds = %2, %21, %20, %19, %16
  %23 = load i32, i32* @MGAREG_SEQ_INDEX, align 4
  %24 = call i32 @WREG8(i32 %23, i32 1)
  %25 = load i32, i32* @MGAREG_SEQ_DATA, align 4
  %26 = call i32 @RREG8(i32 %25)
  %27 = and i32 %26, -33
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %31 = call i32 @mga_wait_vsync(%struct.mga_device* %30)
  %32 = load %struct.mga_device*, %struct.mga_device** %6, align 8
  %33 = call i32 @mga_wait_busy(%struct.mga_device* %32)
  %34 = load i32, i32* @MGAREG_SEQ_DATA, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @WREG8(i32 %34, i32 %35)
  %37 = call i32 @msleep(i32 20)
  %38 = load i32, i32* @MGAREG_CRTCEXT_INDEX, align 4
  %39 = call i32 @WREG8(i32 %38, i32 1)
  %40 = load i32, i32* @MGAREG_CRTCEXT_DATA, align 4
  %41 = call i32 @RREG8(i32 %40)
  %42 = and i32 %41, -49
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @MGAREG_CRTCEXT_DATA, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @WREG8(i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @mga_crtc_load_lut(%struct.drm_crtc*) #1

declare dso_local i32 @WREG8(i32, i32) #1

declare dso_local i32 @RREG8(i32) #1

declare dso_local i32 @mga_wait_vsync(%struct.mga_device*) #1

declare dso_local i32 @mga_wait_busy(%struct.mga_device*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
