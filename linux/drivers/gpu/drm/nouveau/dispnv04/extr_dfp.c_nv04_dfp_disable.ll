; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dfp.c_nv04_dfp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dfp.c_nv04_dfp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_crtc_reg = type { i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nv04_crtc_reg* }

@NV_PRAMDAC_FP_TG_CONTROL = common dso_local global i32 0, align 4
@FP_TG_CONTROL_ON = common dso_local global i32 0, align 4
@FP_TG_CONTROL_OFF = common dso_local global i32 0, align 4
@NV_CIO_CRE_LCD_ROUTE_MASK = common dso_local global i32 0, align 4
@NV_CIO_CRE_LCD__INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv04_dfp_disable(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv04_crtc_reg*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = call %struct.TYPE_4__* @nv04_display(%struct.drm_device* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %9, align 8
  store %struct.nv04_crtc_reg* %10, %struct.nv04_crtc_reg** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL, align 4
  %14 = call i32 @NVReadRAMDAC(%struct.drm_device* %11, i32 %12, i32 %13)
  %15 = load i32, i32* @FP_TG_CONTROL_ON, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL, align 4
  %22 = load i32, i32* @FP_TG_CONTROL_OFF, align 4
  %23 = call i32 @NVWriteRAMDAC(%struct.drm_device* %19, i32 %20, i32 %21, i32 %22)
  %24 = call i32 @msleep(i32 50)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* @FP_TG_CONTROL_OFF, align 4
  %27 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %27, i64 %29
  %31 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %30, i32 0, i32 1
  store i32 %26, i32* %31, align 8
  %32 = load i32, i32* @NV_CIO_CRE_LCD_ROUTE_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %34, i64 %36
  %38 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @NV_CIO_CRE_LCD__INDEX, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %33
  store i32 %43, i32* %41, align 4
  ret void
}

declare dso_local %struct.TYPE_4__* @nv04_display(%struct.drm_device*) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
