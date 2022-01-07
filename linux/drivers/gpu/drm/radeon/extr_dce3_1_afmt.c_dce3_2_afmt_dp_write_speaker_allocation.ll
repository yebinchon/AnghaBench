; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce3_1_afmt.c_dce3_2_afmt_dp_write_speaker_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce3_1_afmt.c_dce3_2_afmt_dp_write_speaker_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@AZ_F0_CODEC_PIN0_CONTROL_CHANNEL_SPEAKER = common dso_local global i32 0, align 4
@HDMI_CONNECTION = common dso_local global i32 0, align 4
@SPEAKER_ALLOCATION_MASK = common dso_local global i32 0, align 4
@DP_CONNECTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce3_2_afmt_dp_write_speaker_allocation(%struct.drm_encoder* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %7, align 8
  %14 = load i32, i32* @AZ_F0_CODEC_PIN0_CONTROL_CHANNEL_SPEAKER, align 4
  %15 = call i32 @RREG32_ENDPOINT(i32 0, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @HDMI_CONNECTION, align 4
  %17 = load i32, i32* @SPEAKER_ALLOCATION_MASK, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @DP_CONNECTION, align 4
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SPEAKER_ALLOCATION(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %3
  %35 = call i32 @SPEAKER_ALLOCATION(i32 5)
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32, i32* @AZ_F0_CODEC_PIN0_CONTROL_CHANNEL_SPEAKER, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @WREG32_ENDPOINT(i32 0, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @RREG32_ENDPOINT(i32, i32) #1

declare dso_local i32 @SPEAKER_ALLOCATION(i32) #1

declare dso_local i32 @WREG32_ENDPOINT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
