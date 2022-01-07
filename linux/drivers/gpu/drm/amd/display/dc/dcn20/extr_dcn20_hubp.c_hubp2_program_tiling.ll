; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_program_tiling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_program_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn20_hubp = type { i32 }
%union.dc_tiling_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@DCSURF_ADDR_CONFIG = common dso_local global i32 0, align 4
@NUM_PIPES = common dso_local global i32 0, align 4
@PIPE_INTERLEAVE = common dso_local global i32 0, align 4
@MAX_COMPRESSED_FRAGS = common dso_local global i32 0, align 4
@DCSURF_TILING_CONFIG = common dso_local global i32 0, align 4
@SW_MODE = common dso_local global i32 0, align 4
@META_LINEAR = common dso_local global i32 0, align 4
@RB_ALIGNED = common dso_local global i32 0, align 4
@PIPE_ALIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn20_hubp*, %union.dc_tiling_info*, i32)* @hubp2_program_tiling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hubp2_program_tiling(%struct.dcn20_hubp* %0, %union.dc_tiling_info* %1, i32 %2) #0 {
  %4 = alloca %struct.dcn20_hubp*, align 8
  %5 = alloca %union.dc_tiling_info*, align 8
  %6 = alloca i32, align 4
  store %struct.dcn20_hubp* %0, %struct.dcn20_hubp** %4, align 8
  store %union.dc_tiling_info* %1, %union.dc_tiling_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @DCSURF_ADDR_CONFIG, align 4
  %8 = load i32, i32* @NUM_PIPES, align 4
  %9 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %10 = bitcast %union.dc_tiling_info* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @log_2(i32 %12)
  %14 = load i32, i32* @PIPE_INTERLEAVE, align 4
  %15 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %16 = bitcast %union.dc_tiling_info* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAX_COMPRESSED_FRAGS, align 4
  %20 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %21 = bitcast %union.dc_tiling_info* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @log_2(i32 %23)
  %25 = call i32 @REG_UPDATE_3(i32 %7, i32 %8, i32 %13, i32 %14, i32 %18, i32 %19, i32 %24)
  %26 = load i32, i32* @DCSURF_TILING_CONFIG, align 4
  %27 = load i32, i32* @SW_MODE, align 4
  %28 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %29 = bitcast %union.dc_tiling_info* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @META_LINEAR, align 4
  %33 = load i32, i32* @RB_ALIGNED, align 4
  %34 = load i32, i32* @PIPE_ALIGNED, align 4
  %35 = call i32 @REG_UPDATE_4(i32 %26, i32 %27, i32 %31, i32 %32, i32 0, i32 %33, i32 0, i32 %34, i32 0)
  ret void
}

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_2(i32) #1

declare dso_local i32 @REG_UPDATE_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
