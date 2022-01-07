; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_dce_aud_az_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_dce_aud_az_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32 }

@AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL = common dso_local global i32 0, align 4
@CLOCK_GATING_DISABLE = common dso_local global i32 0, align 4
@AUDIO_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"\0A\09========= AUDIO:dce_aud_az_disable: index: %u  data: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_aud_az_disable(%struct.audio* %0) #0 {
  %2 = alloca %struct.audio*, align 8
  %3 = alloca i32, align 4
  store %struct.audio* %0, %struct.audio** %2, align 8
  %4 = call i32 (...) @DC_LOGGER_INIT()
  %5 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %6 = call i32 @AZ_REG_READ(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %9 = load i32, i32* @CLOCK_GATING_DISABLE, align 4
  %10 = call i32 @set_reg_field_value(i32 %7, i32 1, i32 %8, i32 %9)
  %11 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @AZ_REG_WRITE(i32 %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %16 = load i32, i32* @AUDIO_ENABLED, align 4
  %17 = call i32 @set_reg_field_value(i32 %14, i32 0, i32 %15, i32 %16)
  %18 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @AZ_REG_WRITE(i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %23 = load i32, i32* @CLOCK_GATING_DISABLE, align 4
  %24 = call i32 @set_reg_field_value(i32 %21, i32 0, i32 %22, i32 %23)
  %25 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @AZ_REG_WRITE(i32 %25, i32 %26)
  %28 = load i32, i32* @AZALIA_F0_CODEC_PIN_CONTROL_HOT_PLUG_CONTROL, align 4
  %29 = call i32 @AZ_REG_READ(i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.audio*, %struct.audio** %2, align 8
  %31 = getelementptr inbounds %struct.audio, %struct.audio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @DC_LOG_HW_AUDIO(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @DC_LOGGER_INIT(...) #1

declare dso_local i32 @AZ_REG_READ(i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @AZ_REG_WRITE(i32, i32) #1

declare dso_local i32 @DC_LOG_HW_AUDIO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
