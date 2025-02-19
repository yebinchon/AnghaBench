; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_write_indirect_azalia_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_write_indirect_azalia_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32 }
%struct.dce_audio = type { i32 }

@AZALIA_F0_CODEC_ENDPOINT_INDEX = common dso_local global i32 0, align 4
@AZALIA_ENDPOINT_REG_INDEX = common dso_local global i32 0, align 4
@AZALIA_F0_CODEC_ENDPOINT_DATA = common dso_local global i32 0, align 4
@AZALIA_ENDPOINT_REG_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"AUDIO:write_indirect_azalia_reg: index: %u  data: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio*, i32, i32)* @write_indirect_azalia_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_indirect_azalia_reg(%struct.audio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.audio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dce_audio*, align 8
  store %struct.audio* %0, %struct.audio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.audio*, %struct.audio** %4, align 8
  %9 = call %struct.dce_audio* @DCE_AUD(%struct.audio* %8)
  store %struct.dce_audio* %9, %struct.dce_audio** %7, align 8
  %10 = load i32, i32* @AZALIA_F0_CODEC_ENDPOINT_INDEX, align 4
  %11 = load i32, i32* @AZALIA_ENDPOINT_REG_INDEX, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @REG_SET(i32 %10, i32 0, i32 %11, i32 %12)
  %14 = load i32, i32* @AZALIA_F0_CODEC_ENDPOINT_DATA, align 4
  %15 = load i32, i32* @AZALIA_ENDPOINT_REG_DATA, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @REG_SET(i32 %14, i32 0, i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @DC_LOG_HW_AUDIO(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  ret void
}

declare dso_local %struct.dce_audio* @DCE_AUD(%struct.audio*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @DC_LOG_HW_AUDIO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
