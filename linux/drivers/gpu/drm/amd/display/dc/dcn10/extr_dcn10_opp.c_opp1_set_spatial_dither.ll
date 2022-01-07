; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_opp.c_opp1_set_spatial_dither.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_opp.c_opp1_set_spatial_dither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_opp = type { i32 }
%struct.bit_depth_reduction_params = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@FMT_BIT_DEPTH_CONTROL = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_EN = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_MODE = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_DEPTH = common dso_local global i32 0, align 4
@FMT_TEMPORAL_DITHER_EN = common dso_local global i32 0, align 4
@FMT_HIGHPASS_RANDOM_ENABLE = common dso_local global i32 0, align 4
@FMT_FRAME_RANDOM_ENABLE = common dso_local global i32 0, align 4
@FMT_RGB_RANDOM_ENABLE = common dso_local global i32 0, align 4
@FMT_CONTROL = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP = common dso_local global i32 0, align 4
@FMT_DITHER_RAND_R_SEED = common dso_local global i32 0, align 4
@FMT_RAND_R_SEED = common dso_local global i32 0, align 4
@FMT_DITHER_RAND_G_SEED = common dso_local global i32 0, align 4
@FMT_RAND_G_SEED = common dso_local global i32 0, align 4
@FMT_DITHER_RAND_B_SEED = common dso_local global i32 0, align 4
@FMT_RAND_B_SEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_opp*, %struct.bit_depth_reduction_params*)* @opp1_set_spatial_dither to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opp1_set_spatial_dither(%struct.dcn10_opp* %0, %struct.bit_depth_reduction_params* %1) #0 {
  %3 = alloca %struct.dcn10_opp*, align 8
  %4 = alloca %struct.bit_depth_reduction_params*, align 8
  store %struct.dcn10_opp* %0, %struct.dcn10_opp** %3, align 8
  store %struct.bit_depth_reduction_params* %1, %struct.bit_depth_reduction_params** %4, align 8
  %5 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %6 = load i32, i32* @FMT_SPATIAL_DITHER_EN, align 4
  %7 = load i32, i32* @FMT_SPATIAL_DITHER_MODE, align 4
  %8 = load i32, i32* @FMT_SPATIAL_DITHER_DEPTH, align 4
  %9 = load i32, i32* @FMT_TEMPORAL_DITHER_EN, align 4
  %10 = load i32, i32* @FMT_HIGHPASS_RANDOM_ENABLE, align 4
  %11 = load i32, i32* @FMT_FRAME_RANDOM_ENABLE, align 4
  %12 = load i32, i32* @FMT_RGB_RANDOM_ENABLE, align 4
  %13 = call i32 @REG_UPDATE_7(i32 %5, i32 %6, i32 0, i32 %7, i32 0, i32 %8, i32 0, i32 %9, i32 0, i32 %10, i32 0, i32 %11, i32 0, i32 %12, i32 0)
  %14 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %15 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %50

19:                                               ; preds = %2
  %20 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %21 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %27 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %25, %19
  %32 = load i32, i32* @FMT_CONTROL, align 4
  %33 = load i32, i32* @FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, align 4
  %34 = load i32, i32* @FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, align 4
  %35 = call i32 @REG_UPDATE_2(i32 %32, i32 %33, i32 15, i32 %34, i32 2)
  br label %49

36:                                               ; preds = %25
  %37 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %38 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @FMT_CONTROL, align 4
  %44 = load i32, i32* @FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, align 4
  %45 = load i32, i32* @FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, align 4
  %46 = call i32 @REG_UPDATE_2(i32 %43, i32 %44, i32 3, i32 %45, i32 1)
  br label %48

47:                                               ; preds = %36
  br label %106

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %31
  br label %55

50:                                               ; preds = %2
  %51 = load i32, i32* @FMT_CONTROL, align 4
  %52 = load i32, i32* @FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, align 4
  %53 = load i32, i32* @FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, align 4
  %54 = call i32 @REG_UPDATE_2(i32 %51, i32 %52, i32 0, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %50, %49
  %56 = load i32, i32* @FMT_DITHER_RAND_R_SEED, align 4
  %57 = load i32, i32* @FMT_RAND_R_SEED, align 4
  %58 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %59 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @REG_SET(i32 %56, i32 0, i32 %57, i32 %60)
  %62 = load i32, i32* @FMT_DITHER_RAND_G_SEED, align 4
  %63 = load i32, i32* @FMT_RAND_G_SEED, align 4
  %64 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %65 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @REG_SET(i32 %62, i32 0, i32 %63, i32 %66)
  %68 = load i32, i32* @FMT_DITHER_RAND_B_SEED, align 4
  %69 = load i32, i32* @FMT_RAND_B_SEED, align 4
  %70 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %71 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @REG_SET(i32 %68, i32 0, i32 %69, i32 %72)
  %74 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %75 = load i32, i32* @FMT_SPATIAL_DITHER_EN, align 4
  %76 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %77 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FMT_SPATIAL_DITHER_MODE, align 4
  %81 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %82 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @FMT_SPATIAL_DITHER_DEPTH, align 4
  %86 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %87 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @FMT_HIGHPASS_RANDOM_ENABLE, align 4
  %91 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %92 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FMT_FRAME_RANDOM_ENABLE, align 4
  %96 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %97 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @FMT_RGB_RANDOM_ENABLE, align 4
  %101 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %102 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @REG_UPDATE_6(i32 %74, i32 %75, i32 %79, i32 %80, i32 %84, i32 %85, i32 %89, i32 %90, i32 %94, i32 %95, i32 %99, i32 %100, i32 %104)
  br label %106

106:                                              ; preds = %55, %47
  ret void
}

declare dso_local i32 @REG_UPDATE_7(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_6(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
