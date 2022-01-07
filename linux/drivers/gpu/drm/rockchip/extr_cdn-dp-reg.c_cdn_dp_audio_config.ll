; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_audio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_audio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32, i32 }
%struct.audio_info = type { i64 }

@AFMT_SPDIF = common dso_local global i64 0, align 8
@CM_LANE_CTRL = common dso_local global i32 0, align 4
@LANE_REF_CYC = common dso_local global i32 0, align 4
@CM_CTRL = common dso_local global i32 0, align 4
@AFMT_I2S = common dso_local global i64 0, align 8
@AUDIO_PACK_CONTROL = common dso_local global i32 0, align 4
@AUDIO_PACK_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"audio config failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdn_dp_audio_config(%struct.cdn_dp_device* %0, %struct.audio_info* %1) #0 {
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca %struct.audio_info*, align 8
  %5 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  store %struct.audio_info* %1, %struct.audio_info** %4, align 8
  %6 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %7 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AFMT_SPDIF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %13 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @reset_control_assert(i32 %14)
  %16 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %17 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @reset_control_deassert(i32 %18)
  br label %20

20:                                               ; preds = %11, %2
  %21 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %22 = load i32, i32* @CM_LANE_CTRL, align 4
  %23 = load i32, i32* @LANE_REF_CYC, align 4
  %24 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %60

28:                                               ; preds = %20
  %29 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %30 = load i32, i32* @CM_CTRL, align 4
  %31 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %29, i32 %30, i32 0)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %60

35:                                               ; preds = %28
  %36 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %37 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AFMT_I2S, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %43 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %44 = call i32 @cdn_dp_audio_config_i2s(%struct.cdn_dp_device* %42, %struct.audio_info* %43)
  br label %55

45:                                               ; preds = %35
  %46 = load %struct.audio_info*, %struct.audio_info** %4, align 8
  %47 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AFMT_SPDIF, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %53 = call i32 @cdn_dp_audio_config_spdif(%struct.cdn_dp_device* %52)
  br label %54

54:                                               ; preds = %51, %45
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %57 = load i32, i32* @AUDIO_PACK_CONTROL, align 4
  %58 = load i32, i32* @AUDIO_PACK_EN, align 4
  %59 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %56, i32 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %55, %34, %27
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %65 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @DRM_DEV_ERROR(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @cdn_dp_reg_write(%struct.cdn_dp_device*, i32, i32) #1

declare dso_local i32 @cdn_dp_audio_config_i2s(%struct.cdn_dp_device*, %struct.audio_info*) #1

declare dso_local i32 @cdn_dp_audio_config_spdif(%struct.cdn_dp_device*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
