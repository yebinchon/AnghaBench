; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_program_tiling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_program_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%union.dc_tiling_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dcn10_hubp = type { i32 }

@DCSURF_ADDR_CONFIG = common dso_local global i32 0, align 4
@NUM_PIPES = common dso_local global i32 0, align 4
@NUM_BANKS = common dso_local global i32 0, align 4
@PIPE_INTERLEAVE = common dso_local global i32 0, align 4
@NUM_SE = common dso_local global i32 0, align 4
@NUM_RB_PER_SE = common dso_local global i32 0, align 4
@MAX_COMPRESSED_FRAGS = common dso_local global i32 0, align 4
@DCSURF_TILING_CONFIG = common dso_local global i32 0, align 4
@SW_MODE = common dso_local global i32 0, align 4
@META_LINEAR = common dso_local global i32 0, align 4
@RB_ALIGNED = common dso_local global i32 0, align 4
@PIPE_ALIGNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp1_program_tiling(%struct.hubp* %0, %union.dc_tiling_info* %1, i32 %2) #0 {
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca %union.dc_tiling_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn10_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %4, align 8
  store %union.dc_tiling_info* %1, %union.dc_tiling_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hubp*, %struct.hubp** %4, align 8
  %9 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %8)
  store %struct.dcn10_hubp* %9, %struct.dcn10_hubp** %7, align 8
  %10 = load i32, i32* @DCSURF_ADDR_CONFIG, align 4
  %11 = load i32, i32* @NUM_PIPES, align 4
  %12 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %13 = bitcast %union.dc_tiling_info* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @log_2(i32 %15)
  %17 = load i32, i32* @NUM_BANKS, align 4
  %18 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %19 = bitcast %union.dc_tiling_info* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @log_2(i32 %21)
  %23 = load i32, i32* @PIPE_INTERLEAVE, align 4
  %24 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %25 = bitcast %union.dc_tiling_info* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NUM_SE, align 4
  %29 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %30 = bitcast %union.dc_tiling_info* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @log_2(i32 %32)
  %34 = load i32, i32* @NUM_RB_PER_SE, align 4
  %35 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %36 = bitcast %union.dc_tiling_info* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @log_2(i32 %38)
  %40 = load i32, i32* @MAX_COMPRESSED_FRAGS, align 4
  %41 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %42 = bitcast %union.dc_tiling_info* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @log_2(i32 %44)
  %46 = call i32 @REG_UPDATE_6(i32 %10, i32 %11, i32 %16, i32 %17, i32 %22, i32 %23, i32 %27, i32 %28, i32 %33, i32 %34, i32 %39, i32 %40, i32 %45)
  %47 = load i32, i32* @DCSURF_TILING_CONFIG, align 4
  %48 = load i32, i32* @SW_MODE, align 4
  %49 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %50 = bitcast %union.dc_tiling_info* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @META_LINEAR, align 4
  %54 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %55 = bitcast %union.dc_tiling_info* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RB_ALIGNED, align 4
  %59 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %60 = bitcast %union.dc_tiling_info* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PIPE_ALIGNED, align 4
  %64 = load %union.dc_tiling_info*, %union.dc_tiling_info** %5, align 8
  %65 = bitcast %union.dc_tiling_info* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @REG_UPDATE_4(i32 %47, i32 %48, i32 %52, i32 %53, i32 %57, i32 %58, i32 %62, i32 %63, i32 %67)
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_UPDATE_6(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_2(i32) #1

declare dso_local i32 @REG_UPDATE_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
