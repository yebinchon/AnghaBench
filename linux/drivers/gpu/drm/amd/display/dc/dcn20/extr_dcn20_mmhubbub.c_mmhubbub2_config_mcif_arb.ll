; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mmhubbub.c_mmhubbub2_config_mcif_arb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mmhubbub.c_mmhubbub2_config_mcif_arb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcif_wb = type { i32 }
%struct.mcif_arb_params = type { i32, i32*, i32*, i32, i32, i32 }
%struct.dcn20_mmhubbub = type { i32 }

@MCIF_WB_ARBITRATION_CONTROL = common dso_local global i32 0, align 4
@MCIF_WB_TIME_PER_PIXEL = common dso_local global i32 0, align 4
@MCIF_WB_SCLK_CHANGE = common dso_local global i32 0, align 4
@MCIF_WB_CLI_WATERMARK_MASK = common dso_local global i32 0, align 4
@MCIF_WB_WATERMARK = common dso_local global i32 0, align 4
@MCIF_WB_CLI_WATERMARK = common dso_local global i32 0, align 4
@MCIF_WB_NB_PSTATE_CONTROL = common dso_local global i32 0, align 4
@NB_PSTATE_CHANGE_WATERMARK_MASK = common dso_local global i32 0, align 4
@MCIF_WB_NB_PSTATE_LATENCY_WATERMARK = common dso_local global i32 0, align 4
@NB_PSTATE_CHANGE_REFRESH_WATERMARK = common dso_local global i32 0, align 4
@MULTI_LEVEL_QOS_CTRL = common dso_local global i32 0, align 4
@MAX_SCALED_TIME_TO_URGENT = common dso_local global i32 0, align 4
@MCIF_WB_BUFMGR_VCE_CONTROL = common dso_local global i32 0, align 4
@MCIF_WB_BUFMGR_SLICE_SIZE = common dso_local global i32 0, align 4
@MCIF_WB_CLIENT_ARBITRATION_SLICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcif_wb*, %struct.mcif_arb_params*)* @mmhubbub2_config_mcif_arb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhubbub2_config_mcif_arb(%struct.mcif_wb* %0, %struct.mcif_arb_params* %1) #0 {
  %3 = alloca %struct.mcif_wb*, align 8
  %4 = alloca %struct.mcif_arb_params*, align 8
  %5 = alloca %struct.dcn20_mmhubbub*, align 8
  store %struct.mcif_wb* %0, %struct.mcif_wb** %3, align 8
  store %struct.mcif_arb_params* %1, %struct.mcif_arb_params** %4, align 8
  %6 = load %struct.mcif_wb*, %struct.mcif_wb** %3, align 8
  %7 = call %struct.dcn20_mmhubbub* @TO_DCN20_MMHUBBUB(%struct.mcif_wb* %6)
  store %struct.dcn20_mmhubbub* %7, %struct.dcn20_mmhubbub** %5, align 8
  %8 = load i32, i32* @MCIF_WB_ARBITRATION_CONTROL, align 4
  %9 = load i32, i32* @MCIF_WB_TIME_PER_PIXEL, align 4
  %10 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %4, align 8
  %11 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @REG_UPDATE(i32 %8, i32 %9, i32 %12)
  %14 = load i32, i32* @MCIF_WB_SCLK_CHANGE, align 4
  %15 = load i32, i32* @MCIF_WB_CLI_WATERMARK_MASK, align 4
  %16 = call i32 @REG_UPDATE(i32 %14, i32 %15, i32 0)
  %17 = load i32, i32* @MCIF_WB_WATERMARK, align 4
  %18 = load i32, i32* @MCIF_WB_CLI_WATERMARK, align 4
  %19 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %4, align 8
  %20 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @REG_UPDATE(i32 %17, i32 %18, i32 %23)
  %25 = load i32, i32* @MCIF_WB_SCLK_CHANGE, align 4
  %26 = load i32, i32* @MCIF_WB_CLI_WATERMARK_MASK, align 4
  %27 = call i32 @REG_UPDATE(i32 %25, i32 %26, i32 1)
  %28 = load i32, i32* @MCIF_WB_WATERMARK, align 4
  %29 = load i32, i32* @MCIF_WB_CLI_WATERMARK, align 4
  %30 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %4, align 8
  %31 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @REG_UPDATE(i32 %28, i32 %29, i32 %34)
  %36 = load i32, i32* @MCIF_WB_SCLK_CHANGE, align 4
  %37 = load i32, i32* @MCIF_WB_CLI_WATERMARK_MASK, align 4
  %38 = call i32 @REG_UPDATE(i32 %36, i32 %37, i32 2)
  %39 = load i32, i32* @MCIF_WB_WATERMARK, align 4
  %40 = load i32, i32* @MCIF_WB_CLI_WATERMARK, align 4
  %41 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %4, align 8
  %42 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @REG_UPDATE(i32 %39, i32 %40, i32 %45)
  %47 = load i32, i32* @MCIF_WB_SCLK_CHANGE, align 4
  %48 = load i32, i32* @MCIF_WB_CLI_WATERMARK_MASK, align 4
  %49 = call i32 @REG_UPDATE(i32 %47, i32 %48, i32 3)
  %50 = load i32, i32* @MCIF_WB_WATERMARK, align 4
  %51 = load i32, i32* @MCIF_WB_CLI_WATERMARK, align 4
  %52 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %4, align 8
  %53 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @REG_UPDATE(i32 %50, i32 %51, i32 %56)
  %58 = load i32, i32* @MCIF_WB_NB_PSTATE_CONTROL, align 4
  %59 = load i32, i32* @NB_PSTATE_CHANGE_WATERMARK_MASK, align 4
  %60 = call i32 @REG_UPDATE(i32 %58, i32 %59, i32 0)
  %61 = load i32, i32* @MCIF_WB_NB_PSTATE_LATENCY_WATERMARK, align 4
  %62 = load i32, i32* @NB_PSTATE_CHANGE_REFRESH_WATERMARK, align 4
  %63 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %4, align 8
  %64 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @REG_UPDATE(i32 %61, i32 %62, i32 %67)
  %69 = load i32, i32* @MCIF_WB_NB_PSTATE_CONTROL, align 4
  %70 = load i32, i32* @NB_PSTATE_CHANGE_WATERMARK_MASK, align 4
  %71 = call i32 @REG_UPDATE(i32 %69, i32 %70, i32 1)
  %72 = load i32, i32* @MCIF_WB_NB_PSTATE_LATENCY_WATERMARK, align 4
  %73 = load i32, i32* @NB_PSTATE_CHANGE_REFRESH_WATERMARK, align 4
  %74 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %4, align 8
  %75 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @REG_UPDATE(i32 %72, i32 %73, i32 %78)
  %80 = load i32, i32* @MCIF_WB_NB_PSTATE_CONTROL, align 4
  %81 = load i32, i32* @NB_PSTATE_CHANGE_WATERMARK_MASK, align 4
  %82 = call i32 @REG_UPDATE(i32 %80, i32 %81, i32 2)
  %83 = load i32, i32* @MCIF_WB_NB_PSTATE_LATENCY_WATERMARK, align 4
  %84 = load i32, i32* @NB_PSTATE_CHANGE_REFRESH_WATERMARK, align 4
  %85 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %4, align 8
  %86 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @REG_UPDATE(i32 %83, i32 %84, i32 %89)
  %91 = load i32, i32* @MCIF_WB_NB_PSTATE_CONTROL, align 4
  %92 = load i32, i32* @NB_PSTATE_CHANGE_WATERMARK_MASK, align 4
  %93 = call i32 @REG_UPDATE(i32 %91, i32 %92, i32 3)
  %94 = load i32, i32* @MCIF_WB_NB_PSTATE_LATENCY_WATERMARK, align 4
  %95 = load i32, i32* @NB_PSTATE_CHANGE_REFRESH_WATERMARK, align 4
  %96 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %4, align 8
  %97 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @REG_UPDATE(i32 %94, i32 %95, i32 %100)
  %102 = load i32, i32* @MULTI_LEVEL_QOS_CTRL, align 4
  %103 = load i32, i32* @MAX_SCALED_TIME_TO_URGENT, align 4
  %104 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %4, align 8
  %105 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @REG_UPDATE(i32 %102, i32 %103, i32 %106)
  %108 = load i32, i32* @MCIF_WB_BUFMGR_VCE_CONTROL, align 4
  %109 = load i32, i32* @MCIF_WB_BUFMGR_SLICE_SIZE, align 4
  %110 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %4, align 8
  %111 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @REG_UPDATE(i32 %108, i32 %109, i32 %113)
  %115 = load i32, i32* @MCIF_WB_ARBITRATION_CONTROL, align 4
  %116 = load i32, i32* @MCIF_WB_CLIENT_ARBITRATION_SLICE, align 4
  %117 = load %struct.mcif_arb_params*, %struct.mcif_arb_params** %4, align 8
  %118 = getelementptr inbounds %struct.mcif_arb_params, %struct.mcif_arb_params* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @REG_UPDATE(i32 %115, i32 %116, i32 %119)
  ret void
}

declare dso_local %struct.dcn20_mmhubbub* @TO_DCN20_MMHUBBUB(%struct.mcif_wb*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
