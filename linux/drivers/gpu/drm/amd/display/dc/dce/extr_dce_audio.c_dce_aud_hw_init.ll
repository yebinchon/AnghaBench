; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_dce_aud_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_dce_aud_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i64 }
%struct.dce_audio = type { i32 }

@AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL = common dso_local global i32 0, align 4
@CLOCK_GATING_DISABLE = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_FUNCTION_PARAMETER_SUPPORTED_SIZE_RATES = common dso_local global i32 0, align 4
@AUDIO_RATE_CAPABILITIES = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_FUNCTION_PARAMETER_POWER_STATES = common dso_local global i32 0, align 4
@CLKSTOP = common dso_local global i32 0, align 4
@EPSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_aud_hw_init(%struct.audio* %0) #0 {
  %2 = alloca %struct.audio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dce_audio*, align 8
  store %struct.audio* %0, %struct.audio** %2, align 8
  %5 = load %struct.audio*, %struct.audio** %2, align 8
  %6 = call %struct.dce_audio* @DCE_AUD(%struct.audio* %5)
  store %struct.dce_audio* %6, %struct.dce_audio** %4, align 8
  %7 = load %struct.audio*, %struct.audio** %2, align 8
  %8 = getelementptr inbounds %struct.audio, %struct.audio* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %36

12:                                               ; preds = %1
  %13 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %14 = call i32 @AZ_REG_READ(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %17 = load i32, i32* @CLOCK_GATING_DISABLE, align 4
  %18 = call i32 @set_reg_field_value(i32 %15, i32 1, i32 %16, i32 %17)
  %19 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @AZ_REG_WRITE(i32 %19, i32 %20)
  %22 = load i32, i32* @AZALIA_F0_CODEC_FUNCTION_PARAMETER_SUPPORTED_SIZE_RATES, align 4
  %23 = load i32, i32* @AUDIO_RATE_CAPABILITIES, align 4
  %24 = call i32 @REG_UPDATE(i32 %22, i32 %23, i32 112)
  %25 = load i32, i32* @AZALIA_F0_CODEC_FUNCTION_PARAMETER_POWER_STATES, align 4
  %26 = load i32, i32* @CLKSTOP, align 4
  %27 = load i32, i32* @EPSS, align 4
  %28 = call i32 @REG_UPDATE_2(i32 %25, i32 %26, i32 1, i32 %27, i32 1)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %31 = load i32, i32* @CLOCK_GATING_DISABLE, align 4
  %32 = call i32 @set_reg_field_value(i32 %29, i32 0, i32 %30, i32 %31)
  %33 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @AZ_REG_WRITE(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.dce_audio* @DCE_AUD(%struct.audio*) #1

declare dso_local i32 @AZ_REG_READ(i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @AZ_REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
