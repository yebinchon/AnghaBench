; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_dce_aud_az_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_dce_aud_az_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32 }

@AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL = common dso_local global i32 0, align 4
@CLOCK_GATING_DISABLE = common dso_local global i32 0, align 4
@AUDIO_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"\0A\09========= AUDIO:dce_aud_az_enable: index: %u  data: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_aud_az_enable(%struct.audio* %0) #0 {
  %2 = alloca %struct.audio*, align 8
  %3 = alloca i32, align 4
  store %struct.audio* %0, %struct.audio** %2, align 8
  %4 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %5 = call i32 @AZ_REG_READ(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @DC_LOGGER_INIT()
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %9 = load i32, i32* @CLOCK_GATING_DISABLE, align 4
  %10 = call i32 @set_reg_field_value(i32 %7, i32 1, i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %13 = load i32, i32* @AUDIO_ENABLED, align 4
  %14 = call i32 @set_reg_field_value(i32 %11, i32 1, i32 %12, i32 %13)
  %15 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @AZ_REG_WRITE(i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %20 = load i32, i32* @CLOCK_GATING_DISABLE, align 4
  %21 = call i32 @set_reg_field_value(i32 %18, i32 0, i32 %19, i32 %20)
  %22 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @AZ_REG_WRITE(i32 %22, i32 %23)
  %25 = load %struct.audio*, %struct.audio** %2, align 8
  %26 = getelementptr inbounds %struct.audio, %struct.audio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @DC_LOG_HW_AUDIO(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @AZ_REG_READ(i32) #1

declare dso_local i32 @DC_LOGGER_INIT(...) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @AZ_REG_WRITE(i32, i32) #1

declare dso_local i32 @DC_LOG_HW_AUDIO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
