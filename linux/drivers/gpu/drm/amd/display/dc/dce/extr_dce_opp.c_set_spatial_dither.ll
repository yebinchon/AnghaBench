; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_set_spatial_dither.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_set_spatial_dither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_opp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.bit_depth_reduction_params = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32 }

@FMT_BIT_DEPTH_CONTROL = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_EN = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_DEPTH = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_MODE = common dso_local global i32 0, align 4
@FMT_HIGHPASS_RANDOM_ENABLE = common dso_local global i32 0, align 4
@FMT_FRAME_RANDOM_ENABLE = common dso_local global i32 0, align 4
@FMT_RGB_RANDOM_ENABLE = common dso_local global i32 0, align 4
@FMT_TEMPORAL_DITHER_EN = common dso_local global i32 0, align 4
@FMT_CONTROL = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX = common dso_local global i32 0, align 4
@FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP = common dso_local global i32 0, align 4
@FMT_DITHER_RAND_R_SEED = common dso_local global i32 0, align 4
@FMT_RAND_R_SEED = common dso_local global i32 0, align 4
@FMT_DITHER_RAND_G_SEED = common dso_local global i32 0, align 4
@FMT_RAND_G_SEED = common dso_local global i32 0, align 4
@FMT_DITHER_RAND_B_SEED = common dso_local global i32 0, align 4
@FMT_RAND_B_SEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_opp*, %struct.bit_depth_reduction_params*)* @set_spatial_dither to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_spatial_dither(%struct.dce110_opp* %0, %struct.bit_depth_reduction_params* %1) #0 {
  %3 = alloca %struct.dce110_opp*, align 8
  %4 = alloca %struct.bit_depth_reduction_params*, align 8
  store %struct.dce110_opp* %0, %struct.dce110_opp** %3, align 8
  store %struct.bit_depth_reduction_params* %1, %struct.bit_depth_reduction_params** %4, align 8
  %5 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %6 = load i32, i32* @FMT_SPATIAL_DITHER_EN, align 4
  %7 = load i32, i32* @FMT_SPATIAL_DITHER_DEPTH, align 4
  %8 = load i32, i32* @FMT_SPATIAL_DITHER_MODE, align 4
  %9 = call i32 @REG_UPDATE_3(i32 %5, i32 %6, i32 0, i32 %7, i32 0, i32 %8, i32 0)
  %10 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %11 = load i32, i32* @FMT_HIGHPASS_RANDOM_ENABLE, align 4
  %12 = load i32, i32* @FMT_FRAME_RANDOM_ENABLE, align 4
  %13 = load i32, i32* @FMT_RGB_RANDOM_ENABLE, align 4
  %14 = call i32 @REG_UPDATE_3(i32 %10, i32 %11, i32 0, i32 %12, i32 0, i32 %13, i32 0)
  %15 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %16 = load i32, i32* @FMT_TEMPORAL_DITHER_EN, align 4
  %17 = call i32 @REG_UPDATE(i32 %15, i32 %16, i32 0)
  %18 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %19 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %25 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %2
  br label %136

30:                                               ; preds = %23
  %31 = load %struct.dce110_opp*, %struct.dce110_opp** %3, align 8
  %32 = getelementptr inbounds %struct.dce110_opp, %struct.dce110_opp* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %30
  %38 = load %struct.dce110_opp*, %struct.dce110_opp** %3, align 8
  %39 = getelementptr inbounds %struct.dce110_opp, %struct.dce110_opp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %87

44:                                               ; preds = %37
  %45 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %46 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %81

50:                                               ; preds = %44
  %51 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %52 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %58 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %56, %50
  %63 = load i32, i32* @FMT_CONTROL, align 4
  %64 = load i32, i32* @FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, align 4
  %65 = load i32, i32* @FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, align 4
  %66 = call i32 @REG_UPDATE_2(i32 %63, i32 %64, i32 15, i32 %65, i32 2)
  br label %80

67:                                               ; preds = %56
  %68 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %69 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load i32, i32* @FMT_CONTROL, align 4
  %75 = load i32, i32* @FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, align 4
  %76 = load i32, i32* @FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, align 4
  %77 = call i32 @REG_UPDATE_2(i32 %74, i32 %75, i32 3, i32 %76, i32 1)
  br label %79

78:                                               ; preds = %67
  br label %136

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %62
  br label %86

81:                                               ; preds = %44
  %82 = load i32, i32* @FMT_CONTROL, align 4
  %83 = load i32, i32* @FMT_SPATIAL_DITHER_FRAME_COUNTER_MAX, align 4
  %84 = load i32, i32* @FMT_SPATIAL_DITHER_FRAME_COUNTER_BIT_SWAP, align 4
  %85 = call i32 @REG_UPDATE_2(i32 %82, i32 %83, i32 0, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %81, %80
  br label %87

87:                                               ; preds = %86, %37, %30
  %88 = load i32, i32* @FMT_DITHER_RAND_R_SEED, align 4
  %89 = load i32, i32* @FMT_RAND_R_SEED, align 4
  %90 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %91 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @REG_UPDATE(i32 %88, i32 %89, i32 %92)
  %94 = load i32, i32* @FMT_DITHER_RAND_G_SEED, align 4
  %95 = load i32, i32* @FMT_RAND_G_SEED, align 4
  %96 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %97 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @REG_UPDATE(i32 %94, i32 %95, i32 %98)
  %100 = load i32, i32* @FMT_DITHER_RAND_B_SEED, align 4
  %101 = load i32, i32* @FMT_RAND_B_SEED, align 4
  %102 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %103 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @REG_UPDATE(i32 %100, i32 %101, i32 %104)
  %106 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %107 = load i32, i32* @FMT_HIGHPASS_RANDOM_ENABLE, align 4
  %108 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %109 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @FMT_FRAME_RANDOM_ENABLE, align 4
  %113 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %114 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @FMT_RGB_RANDOM_ENABLE, align 4
  %118 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %119 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @REG_UPDATE_3(i32 %106, i32 %107, i32 %111, i32 %112, i32 %116, i32 %117, i32 %121)
  %123 = load i32, i32* @FMT_BIT_DEPTH_CONTROL, align 4
  %124 = load i32, i32* @FMT_SPATIAL_DITHER_DEPTH, align 4
  %125 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %126 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @FMT_SPATIAL_DITHER_MODE, align 4
  %130 = load %struct.bit_depth_reduction_params*, %struct.bit_depth_reduction_params** %4, align 8
  %131 = getelementptr inbounds %struct.bit_depth_reduction_params, %struct.bit_depth_reduction_params* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @FMT_SPATIAL_DITHER_EN, align 4
  %135 = call i32 @REG_UPDATE_3(i32 %123, i32 %124, i32 %128, i32 %129, i32 %133, i32 %134, i32 1)
  br label %136

136:                                              ; preds = %87, %78, %29
  ret void
}

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
