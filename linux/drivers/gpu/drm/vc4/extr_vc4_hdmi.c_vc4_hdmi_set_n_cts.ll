; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_set_n_cts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_set_n_cts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_hdmi = type { %struct.TYPE_4__, %struct.drm_encoder* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_encoder = type { %struct.drm_device*, %struct.drm_crtc* }
%struct.drm_device = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.vc4_dev = type { i32 }

@VC4_HDMI_CRP_CFG = common dso_local global i32 0, align 4
@VC4_HDMI_CRP_CFG_EXTERNAL_CTS_EN = common dso_local global i32 0, align 4
@VC4_HDMI_CRP_CFG_N = common dso_local global i32 0, align 4
@VC4_HDMI_CTS_0 = common dso_local global i32 0, align 4
@VC4_HDMI_CTS_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc4_hdmi*)* @vc4_hdmi_set_n_cts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_hdmi_set_n_cts(%struct.vc4_hdmi* %0) #0 {
  %2 = alloca %struct.vc4_hdmi*, align 8
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vc4_dev*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vc4_hdmi* %0, %struct.vc4_hdmi** %2, align 8
  %12 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %2, align 8
  %13 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %12, i32 0, i32 1
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %13, align 8
  store %struct.drm_encoder* %14, %struct.drm_encoder** %3, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 1
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %16, align 8
  store %struct.drm_crtc* %17, %struct.drm_crtc** %4, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %5, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %21)
  store %struct.vc4_dev* %22, %struct.vc4_dev** %6, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %24 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.drm_display_mode* %26, %struct.drm_display_mode** %7, align 8
  %27 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %2, align 8
  %28 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 128, %31
  %33 = sdiv i32 %32, 1000
  store i32 %33, i32* %9, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 1000
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 128, %41
  %43 = call i32 @do_div(i32 %40, i32 %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @VC4_HDMI_CRP_CFG, align 4
  %46 = load i32, i32* @VC4_HDMI_CRP_CFG_EXTERNAL_CTS_EN, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @VC4_HDMI_CRP_CFG_N, align 4
  %49 = call i32 @VC4_SET_FIELD(i32 %47, i32 %48)
  %50 = or i32 %46, %49
  %51 = call i32 @HDMI_WRITE(i32 %45, i32 %50)
  %52 = load i32, i32* @VC4_HDMI_CTS_0, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @HDMI_WRITE(i32 %52, i32 %53)
  %55 = load i32, i32* @VC4_HDMI_CTS_1, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @HDMI_WRITE(i32 %55, i32 %56)
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @HDMI_WRITE(i32, i32) #1

declare dso_local i32 @VC4_SET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
