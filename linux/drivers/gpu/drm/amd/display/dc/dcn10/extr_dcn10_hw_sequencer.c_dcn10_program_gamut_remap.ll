; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_program_gamut_remap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_program_gamut_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, %struct.dpp_grph_csc_adjustment*)* }
%struct.dpp_grph_csc_adjustment = type { i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }

@GRAPHICS_GAMUT_ADJUST_TYPE_BYPASS = common dso_local global i32 0, align 4
@GRAPHICS_GAMUT_ADJUST_TYPE_SW = common dso_local global i32 0, align 4
@CSC_TEMPERATURE_MATRIX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*)* @dcn10_program_gamut_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_program_gamut_remap(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpp_grph_csc_adjustment, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @memset(%struct.dpp_grph_csc_adjustment* %4, i32 0, i32 16)
  %6 = load i32, i32* @GRAPHICS_GAMUT_ADJUST_TYPE_BYPASS, align 4
  %7 = getelementptr inbounds %struct.dpp_grph_csc_adjustment, %struct.dpp_grph_csc_adjustment* %4, i32 0, i32 1
  store i32 %6, i32* %7, align 8
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %42

15:                                               ; preds = %1
  %16 = load i32, i32* @GRAPHICS_GAMUT_ADJUST_TYPE_SW, align 4
  %17 = getelementptr inbounds %struct.dpp_grph_csc_adjustment, %struct.dpp_grph_csc_adjustment* %4, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %38, %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CSC_TEMPERATURE_MATRIX_SIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.dpp_grph_csc_adjustment, %struct.dpp_grph_csc_adjustment* %4, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %18

41:                                               ; preds = %18
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_10__*, %struct.dpp_grph_csc_adjustment*)*, i32 (%struct.TYPE_10__*, %struct.dpp_grph_csc_adjustment*)** %49, align 8
  %51 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = call i32 %50(%struct.TYPE_10__* %54, %struct.dpp_grph_csc_adjustment* %4)
  ret void
}

declare dso_local i32 @memset(%struct.dpp_grph_csc_adjustment*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
