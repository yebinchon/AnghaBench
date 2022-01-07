; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_set_temporal_dither.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_set_temporal_dither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_opp = type { i32 }
%struct.bit_depth_reduction_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }

@FMT_BIT_DEPTH_CONTROL = common dso_local global i32 0, align 4
@FMT_TEMPORAL_DITHER_EN = common dso_local global i32 0, align 4
@FMT_TEMPORAL_DITHER_RESET = common dso_local global i32 0, align 4
@FMT_TEMPORAL_DITHER_OFFSET = common dso_local global i32 0, align 4
@FMT_TEMPORAL_DITHER_DEPTH = common dso_local global i32 0, align 4
@FMT_TEMPORAL_LEVEL = common dso_local global i32 0, align 4
@FMT_25FRC_SEL = common dso_local global i32 0, align 4
@FMT_50FRC_SEL = common dso_local global i32 0, align 4
@FMT_75FRC_SEL = common dso_local global i32 0, align 4
@FMT_TEMPORAL_DITHER_PATTERN_CONTROL = common dso_local global i32 0, align 4
@FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_S_MATRIX = common dso_local global i32 0, align 4
@FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_T_MATRIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_opp*, %struct.bit_depth_reduction_params*)* @set_temporal_dither to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_temporal_dither(%struct.dce110_opp* %0, %struct.bit_depth_reduction_params* %1) #0 {
  %3 = alloca %struct.dce110_opp*, align 8
  %4 = alloca %struct.bit_depth_reduction_params*, align 8
  store %struct.dce110_opp* %0, %struct.dce110_opp** %3, align 8
  store %struct.bit_depth_reduction_params* %1, %struct.bit_depth_reduction_params** %4, align 8
  %5 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %6 = load i32, i32* @FMT_TEMPORAL_DITHER_EN, align 4
  %7 = load i32, i32* @FMT_TEMPORAL_DITHER_RESET, align 4
  %8 = load i32, i32* @FMT_TEMPORAL_DITHER_OFFSET, align 4
  %9 = call i32 @REG_UPDATE_3(i32 %5, i32 %6, i32 0, i32 %7, i32 0, i32 %8, i32 0)
  %10 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %11 = load i32, i32* @FMT_TEMPORAL_DITHER_DEPTH, align 4
  %12 = load i32, i32* @FMT_TEMPORAL_LEVEL, align 4
  %13 = call i32 @REG_UPDATE_2(i32 %10, i32 %11, i32 0, i32 %12, i32 0)
  %14 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %15 = load i32, i32* @FMT_25FRC_SEL, align 4
  %16 = load i32, i32* @FMT_50FRC_SEL, align 4
  %17 = load i32, i32* @FMT_75FRC_SEL, align 4
  %18 = call i32 @REG_UPDATE_3(i32 %14, i32 %15, i32 0, i32 %16, i32 0, i32 %17, i32 0)
  %19 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %20 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %26 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %2
  br label %79

31:                                               ; preds = %24
  %32 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %33 = load i32, i32* @FMT_TEMPORAL_DITHER_DEPTH, align 4
  %34 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %35 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FMT_TEMPORAL_DITHER_RESET, align 4
  %39 = load i32, i32* @FMT_TEMPORAL_DITHER_OFFSET, align 4
  %40 = call i32 @REG_UPDATE_3(i32 %32, i32 %33, i32 %37, i32 %38, i32 0, i32 %39, i32 0)
  %41 = load i32, i32* @FMT_TEMPORAL_DITHER_PATTERN_CONTROL, align 4
  %42 = call i64 @REG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load i32, i32* @FMT_TEMPORAL_DITHER_PATTERN_CONTROL, align 4
  %46 = call i32 @REG_WRITE(i32 %45, i32 0)
  %47 = load i32, i32* @FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_S_MATRIX, align 4
  %48 = call i32 @REG_WRITE(i32 %47, i32 0)
  %49 = load i32, i32* @FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_T_MATRIX, align 4
  %50 = call i32 @REG_WRITE(i32 %49, i32 0)
  br label %51

51:                                               ; preds = %44, %31
  %52 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %53 = load i32, i32* @FMT_TEMPORAL_LEVEL, align 4
  %54 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %55 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @REG_UPDATE(i32 %52, i32 %53, i32 %57)
  %59 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %60 = load i32, i32* @FMT_25FRC_SEL, align 4
  %61 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %62 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FMT_50FRC_SEL, align 4
  %66 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %67 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @FMT_75FRC_SEL, align 4
  %71 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %72 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @REG_UPDATE_3(i32 %59, i32 %60, i32 %64, i32 %65, i32 %69, i32 %70, i32 %74)
  %76 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %77 = load i32, i32* @FMT_TEMPORAL_DITHER_EN, align 4
  %78 = call i32 @REG_UPDATE(i32 %76, i32 %77, i32 1)
  br label %79

79:                                               ; preds = %51, %30
  ret void
}

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
