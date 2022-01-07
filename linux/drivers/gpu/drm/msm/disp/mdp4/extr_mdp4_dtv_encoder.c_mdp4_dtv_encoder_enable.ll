; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_dtv_encoder.c_mdp4_dtv_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_dtv_encoder.c_mdp4_dtv_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.mdp4_dtv_encoder = type { i64, i32, i32, i32 }
%struct.mdp4_kms = type { i32 }

@BPC8 = common dso_local global i32 0, align 4
@INTF_LCDC_DTV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"setting mdp_clk=%lu\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to set mdp_clk to %lu: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to enabled mdp_clk: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to enable hdmi_clk: %d\0A\00", align 1
@REG_MDP4_DTV_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @mdp4_dtv_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp4_dtv_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mdp4_dtv_encoder*, align 8
  %5 = alloca %struct.mdp4_kms*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %8, i32 0, i32 1
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = call %struct.mdp4_dtv_encoder* @to_mdp4_dtv_encoder(%struct.drm_encoder* %11)
  store %struct.mdp4_dtv_encoder* %12, %struct.mdp4_dtv_encoder** %4, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = call %struct.mdp4_kms* @get_kms(%struct.drm_encoder* %13)
  store %struct.mdp4_kms* %14, %struct.mdp4_kms** %5, align 8
  %15 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %95

24:                                               ; preds = %1
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %26 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BPC8, align 4
  %29 = call i32 @MDP4_DMA_CONFIG_R_BPC(i32 %28)
  %30 = load i32, i32* @BPC8, align 4
  %31 = call i32 @MDP4_DMA_CONFIG_G_BPC(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* @BPC8, align 4
  %34 = call i32 @MDP4_DMA_CONFIG_B_BPC(i32 %33)
  %35 = or i32 %32, %34
  %36 = call i32 @MDP4_DMA_CONFIG_PACK(i32 33)
  %37 = or i32 %35, %36
  %38 = call i32 @mdp4_crtc_set_config(i32 %27, i32 %37)
  %39 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %40 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @INTF_LCDC_DTV, align 4
  %43 = call i32 @mdp4_crtc_set_intf(i32 %41, i32 %42, i32 1)
  %44 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %4, align 8
  %45 = call i32 @bs_set(%struct.mdp4_dtv_encoder* %44, i32 1)
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %4, align 8
  %49 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @clk_set_rate(i32 %50, i64 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %24
  %56 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %6, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32, i8*, i32, ...) @DRM_DEV_ERROR(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %24
  %64 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %4, align 8
  %65 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @clk_prepare_enable(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %72 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i32, i8*, i32, ...) @DRM_DEV_ERROR(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %4, align 8
  %78 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @clk_prepare_enable(i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %85 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i32, i8*, i32, ...) @DRM_DEV_ERROR(i32 %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %76
  %90 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %91 = load i32, i32* @REG_MDP4_DTV_ENABLE, align 4
  %92 = call i32 @mdp4_write(%struct.mdp4_kms* %90, i32 %91, i32 1)
  %93 = load %struct.mdp4_dtv_encoder*, %struct.mdp4_dtv_encoder** %4, align 8
  %94 = getelementptr inbounds %struct.mdp4_dtv_encoder, %struct.mdp4_dtv_encoder* %93, i32 0, i32 1
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %89, %23
  ret void
}

declare dso_local %struct.mdp4_dtv_encoder* @to_mdp4_dtv_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_encoder*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mdp4_crtc_set_config(i32, i32) #1

declare dso_local i32 @MDP4_DMA_CONFIG_R_BPC(i32) #1

declare dso_local i32 @MDP4_DMA_CONFIG_G_BPC(i32) #1

declare dso_local i32 @MDP4_DMA_CONFIG_B_BPC(i32) #1

declare dso_local i32 @MDP4_DMA_CONFIG_PACK(i32) #1

declare dso_local i32 @mdp4_crtc_set_intf(i32, i32, i32) #1

declare dso_local i32 @bs_set(%struct.mdp4_dtv_encoder*, i32) #1

declare dso_local i32 @DBG(i8*, i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
