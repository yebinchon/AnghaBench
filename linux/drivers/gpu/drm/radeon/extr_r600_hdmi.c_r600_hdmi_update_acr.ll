; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_update_acr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_hdmi.c_r600_hdmi_update_acr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_hdmi_acr = type { i32, i32, i32, i32, i32, i32 }

@DCE3_HDMI0_ACR_PACKET_CONTROL = common dso_local global i64 0, align 8
@HDMI0_ACR_PACKET_CONTROL = common dso_local global i64 0, align 8
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
define dso_local void @r600_hdmi_update_acr(%struct.drm_encoder* %0, i64 %1, %struct.radeon_hdmi_acr* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.radeon_hdmi_acr*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca i64, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.radeon_hdmi_acr* %2, %struct.radeon_hdmi_acr** %6, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %8, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %17 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @DCE3_HDMI0_ACR_PACKET_CONTROL, align 8
  br label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @HDMI0_ACR_PACKET_CONTROL, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @HDMI0_ACR_SOURCE, align 4
  %29 = load i32, i32* @HDMI0_ACR_AUTO_SEND, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @HDMI0_ACR_SOURCE, align 4
  %32 = load i32, i32* @HDMI0_ACR_AUTO_SEND, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = call i32 @WREG32_P(i64 %27, i32 %30, i32 %34)
  %36 = load i64, i64* @HDMI0_ACR_32_0, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %40 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @HDMI0_ACR_CTS_32(i32 %41)
  %43 = load i32, i32* @HDMI0_ACR_CTS_32_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = call i32 @WREG32_P(i64 %38, i32 %42, i32 %44)
  %46 = load i64, i64* @HDMI0_ACR_32_1, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %50 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @HDMI0_ACR_N_32(i32 %51)
  %53 = load i32, i32* @HDMI0_ACR_N_32_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = call i32 @WREG32_P(i64 %48, i32 %52, i32 %54)
  %56 = load i64, i64* @HDMI0_ACR_44_0, align 8
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %60 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @HDMI0_ACR_CTS_44(i32 %61)
  %63 = load i32, i32* @HDMI0_ACR_CTS_44_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = call i32 @WREG32_P(i64 %58, i32 %62, i32 %64)
  %66 = load i64, i64* @HDMI0_ACR_44_1, align 8
  %67 = load i64, i64* %5, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %70 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @HDMI0_ACR_N_44(i32 %71)
  %73 = load i32, i32* @HDMI0_ACR_N_44_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = call i32 @WREG32_P(i64 %68, i32 %72, i32 %74)
  %76 = load i64, i64* @HDMI0_ACR_48_0, align 8
  %77 = load i64, i64* %5, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %80 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @HDMI0_ACR_CTS_48(i32 %81)
  %83 = load i32, i32* @HDMI0_ACR_CTS_48_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = call i32 @WREG32_P(i64 %78, i32 %82, i32 %84)
  %86 = load i64, i64* @HDMI0_ACR_48_1, align 8
  %87 = load i64, i64* %5, align 8
  %88 = add nsw i64 %86, %87
  %89 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %6, align 8
  %90 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @HDMI0_ACR_N_48(i32 %91)
  %93 = load i32, i32* @HDMI0_ACR_N_48_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = call i32 @WREG32_P(i64 %88, i32 %92, i32 %94)
  ret void
}

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

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
