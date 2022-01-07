; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_evergreen_hdmi_update_acr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_evergreen_hdmi_update_acr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i64, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_hdmi_acr = type { i32, i32, i32, i32, i32, i32 }
%struct.radeon_crtc = type { i32 }

@HDMI_ACR_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI_ACR_AUTO_SEND = common dso_local global i32 0, align 4
@HDMI_ACR_SOURCE = common dso_local global i32 0, align 4
@HDMI_ACR_32_0 = common dso_local global i64 0, align 8
@HDMI_ACR_32_1 = common dso_local global i64 0, align 8
@HDMI_ACR_44_0 = common dso_local global i64 0, align 8
@HDMI_ACR_44_1 = common dso_local global i64 0, align 8
@HDMI_ACR_48_0 = common dso_local global i64 0, align 8
@HDMI_ACR_48_1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_hdmi_update_acr(%struct.drm_encoder* %0, i64 %1, %struct.radeon_hdmi_acr* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.radeon_hdmi_acr*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_crtc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.radeon_hdmi_acr* %2, %struct.radeon_hdmi_acr** %6, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %8, align 8
  store i32 8, i32* %9, align 4
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.radeon_crtc* @to_radeon_crtc(i64 %24)
  store %struct.radeon_crtc* %25, %struct.radeon_crtc** %10, align 8
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %10, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %21, %3
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 8
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i64, i64* @HDMI_ACR_PACKET_CONTROL, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* @HDMI_ACR_AUTO_SEND, align 4
  %37 = call i32 @WREG32(i64 %35, i32 %36)
  br label %46

38:                                               ; preds = %29
  %39 = load i64, i64* @HDMI_ACR_PACKET_CONTROL, align 8
  %40 = load i64, i64* %5, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* @HDMI_ACR_SOURCE, align 4
  %43 = load i32, i32* @HDMI_ACR_AUTO_SEND, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @WREG32(i64 %41, i32 %44)
  br label %46

46:                                               ; preds = %38, %32
  %47 = load i64, i64* @HDMI_ACR_32_0, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %51 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @HDMI_ACR_CTS_32(i32 %52)
  %54 = call i32 @WREG32(i64 %49, i32 %53)
  %55 = load i64, i64* @HDMI_ACR_32_1, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %59 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @WREG32(i64 %57, i32 %60)
  %62 = load i64, i64* @HDMI_ACR_44_0, align 8
  %63 = load i64, i64* %5, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %66 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @HDMI_ACR_CTS_44(i32 %67)
  %69 = call i32 @WREG32(i64 %64, i32 %68)
  %70 = load i64, i64* @HDMI_ACR_44_1, align 8
  %71 = load i64, i64* %5, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %74 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @WREG32(i64 %72, i32 %75)
  %77 = load i64, i64* @HDMI_ACR_48_0, align 8
  %78 = load i64, i64* %5, align 8
  %79 = add nsw i64 %77, %78
  %80 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %81 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @HDMI_ACR_CTS_48(i32 %82)
  %84 = call i32 @WREG32(i64 %79, i32 %83)
  %85 = load i64, i64* @HDMI_ACR_48_1, align 8
  %86 = load i64, i64* %5, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %89 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @WREG32(i64 %87, i32 %90)
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @HDMI_ACR_CTS_32(i32) #1

declare dso_local i32 @HDMI_ACR_CTS_44(i32) #1

declare dso_local i32 @HDMI_ACR_CTS_48(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
