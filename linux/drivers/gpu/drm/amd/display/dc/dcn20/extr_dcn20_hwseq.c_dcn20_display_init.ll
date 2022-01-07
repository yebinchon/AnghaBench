; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_display_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_display_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dce_hwseq* }
%struct.dce_hwseq = type { i32 }

@RBBMIF_TIMEOUT_DIS = common dso_local global i32 0, align 4
@RBBMIF_TIMEOUT_DIS_2 = common dso_local global i32 0, align 4
@DC_MEM_GLOBAL_PWR_REQ_CNTL = common dso_local global i32 0, align 4
@DC_MEM_GLOBAL_PWR_REQ_DIS = common dso_local global i32 0, align 4
@DCHUBBUB_GLOBAL_TIMER_CNTL = common dso_local global i32 0, align 4
@DCHUBBUB_GLOBAL_TIMER_REFDIV = common dso_local global i32 0, align 4
@DCHUBBUB_GLOBAL_TIMER_ENABLE = common dso_local global i32 0, align 4
@REFCLK_CNTL = common dso_local global i32 0, align 4
@AZALIA_AUDIO_DTO = common dso_local global i32 0, align 4
@AZALIA_AUDIO_DTO_MODULE = common dso_local global i32 0, align 4
@AZALIA_CONTROLLER_CLOCK_GATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_display_init(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca %struct.dce_hwseq*, align 8
  store %struct.dc* %0, %struct.dc** %2, align 8
  %4 = load %struct.dc*, %struct.dc** %2, align 8
  %5 = getelementptr inbounds %struct.dc, %struct.dc* %4, i32 0, i32 0
  %6 = load %struct.dce_hwseq*, %struct.dce_hwseq** %5, align 8
  store %struct.dce_hwseq* %6, %struct.dce_hwseq** %3, align 8
  %7 = load i32, i32* @RBBMIF_TIMEOUT_DIS, align 4
  %8 = call i32 @REG_WRITE(i32 %7, i32 -1)
  %9 = load i32, i32* @RBBMIF_TIMEOUT_DIS_2, align 4
  %10 = call i32 @REG_WRITE(i32 %9, i32 -1)
  %11 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %12 = call i32 @dcn20_dccg_init(%struct.dce_hwseq* %11)
  %13 = load i32, i32* @DC_MEM_GLOBAL_PWR_REQ_CNTL, align 4
  %14 = load i32, i32* @DC_MEM_GLOBAL_PWR_REQ_DIS, align 4
  %15 = call i32 @REG_UPDATE(i32 %13, i32 %14, i32 0)
  %16 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_CNTL, align 4
  %17 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_REFDIV, align 4
  %18 = call i32 @REG_UPDATE(i32 %16, i32 %17, i32 2)
  %19 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_CNTL, align 4
  %20 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_ENABLE, align 4
  %21 = call i32 @REG_UPDATE(i32 %19, i32 %20, i32 1)
  %22 = load i32, i32* @REFCLK_CNTL, align 4
  %23 = call i32 @REG_WRITE(i32 %22, i32 0)
  %24 = load i32, i32* @AZALIA_AUDIO_DTO, align 4
  %25 = load i32, i32* @AZALIA_AUDIO_DTO_MODULE, align 4
  %26 = call i32 @REG_UPDATE(i32 %24, i32 %25, i32 100)
  %27 = load i32, i32* @AZALIA_CONTROLLER_CLOCK_GATING, align 4
  %28 = call i32 @REG_WRITE(i32 %27, i32 1)
  ret void
}

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @dcn20_dccg_init(%struct.dce_hwseq*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
