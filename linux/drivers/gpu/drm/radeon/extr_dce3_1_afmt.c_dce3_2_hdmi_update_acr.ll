; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce3_1_afmt.c_dce3_2_hdmi_update_acr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce3_1_afmt.c_dce3_2_hdmi_update_acr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_hdmi_acr = type { i32, i32, i32, i32, i32, i32 }

@DCE3_HDMI0_ACR_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI0_ACR_SOURCE = common dso_local global i32 0, align 4
@HDMI0_ACR_AUTO_SEND = common dso_local global i32 0, align 4
@HDMI0_ACR_32_0 = common dso_local global i64 0, align 8
@HDMI0_ACR_CTS_32_MASK = common dso_local global i32 0, align 4
@HDMI0_ACR_32_1 = common dso_local global i64 0, align 8
@HDMI0_ACR_N_32_MASK = common dso_local global i32 0, align 4
@HDMI0_ACR_44_0 = common dso_local global i64 0, align 8
@HDMI0_ACR_CTS_44_MASK = common dso_local global i32 0, align 4
@HDMI0_ACR_44_1 = common dso_local global i64 0, align 8
@HDMI0_ACR_N_44_MASK = common dso_local global i32 0, align 4
@HDMI0_ACR_48_0 = common dso_local global i64 0, align 8
@HDMI0_ACR_CTS_48_MASK = common dso_local global i32 0, align 4
@HDMI0_ACR_48_1 = common dso_local global i64 0, align 8
@HDMI0_ACR_N_48_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce3_2_hdmi_update_acr(%struct.drm_encoder* %0, i64 %1, %struct.radeon_hdmi_acr* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.radeon_hdmi_acr*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.radeon_hdmi_acr* %2, %struct.radeon_hdmi_acr** %6, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %8, align 8
  %15 = load i64, i64* @DCE3_HDMI0_ACR_PACKET_CONTROL, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @HDMI0_ACR_SOURCE, align 4
  %19 = load i32, i32* @HDMI0_ACR_AUTO_SEND, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @WREG32(i64 %17, i32 %20)
  %22 = load i64, i64* @HDMI0_ACR_32_0, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %26 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @HDMI0_ACR_CTS_32(i32 %27)
  %29 = load i32, i32* @HDMI0_ACR_CTS_32_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = call i32 @WREG32_P(i64 %24, i32 %28, i32 %30)
  %32 = load i64, i64* @HDMI0_ACR_32_1, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @HDMI0_ACR_N_32(i32 %37)
  %39 = load i32, i32* @HDMI0_ACR_N_32_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @WREG32_P(i64 %34, i32 %38, i32 %40)
  %42 = load i64, i64* @HDMI0_ACR_44_0, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %46 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @HDMI0_ACR_CTS_44(i32 %47)
  %49 = load i32, i32* @HDMI0_ACR_CTS_44_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = call i32 @WREG32_P(i64 %44, i32 %48, i32 %50)
  %52 = load i64, i64* @HDMI0_ACR_44_1, align 8
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @HDMI0_ACR_N_44(i32 %57)
  %59 = load i32, i32* @HDMI0_ACR_N_44_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = call i32 @WREG32_P(i64 %54, i32 %58, i32 %60)
  %62 = load i64, i64* @HDMI0_ACR_48_0, align 8
  %63 = load i64, i64* %5, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %66 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @HDMI0_ACR_CTS_48(i32 %67)
  %69 = load i32, i32* @HDMI0_ACR_CTS_48_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = call i32 @WREG32_P(i64 %64, i32 %68, i32 %70)
  %72 = load i64, i64* @HDMI0_ACR_48_1, align 8
  %73 = load i64, i64* %5, align 8
  %74 = add nsw i64 %72, %73
  %75 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %76 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @HDMI0_ACR_N_48(i32 %77)
  %79 = load i32, i32* @HDMI0_ACR_N_48_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = call i32 @WREG32_P(i64 %74, i32 %78, i32 %80)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @WREG32_P(i64, i32, i32) #1

declare dso_local i32 @HDMI0_ACR_CTS_32(i32) #1

declare dso_local i32 @HDMI0_ACR_N_32(i32) #1

declare dso_local i32 @HDMI0_ACR_CTS_44(i32) #1

declare dso_local i32 @HDMI0_ACR_N_44(i32) #1

declare dso_local i32 @HDMI0_ACR_CTS_48(i32) #1

declare dso_local i32 @HDMI0_ACR_N_48(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
