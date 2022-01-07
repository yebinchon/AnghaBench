; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_set_vswing_premph.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_set_vswing_premph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddi_regoff = type { i32, i32, i32, i32, i32, i32 }
%struct.gma_encoder = type { %struct.cdv_intel_dp*, %struct.TYPE_2__ }
%struct.cdv_intel_dp = type { i64 }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@DP_B = common dso_local global i64 0, align 8
@ddi_DP_train_table = common dso_local global %struct.ddi_regoff* null, align 8
@DP_TRAIN_VOLTAGE_SWING_MASK = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_MASK = common dso_local global i32 0, align 4
@DP_TRAIN_PRE_EMPHASIS_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Test2\0A\00", align 1
@dp_vswing_premph_table = common dso_local global i32* null, align 8
@DP_TRAIN_VOLTAGE_SWING_LEVEL_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gma_encoder*, i32)* @cdv_intel_dp_set_vswing_premph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_dp_set_vswing_premph(%struct.gma_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.gma_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.cdv_intel_dp*, align 8
  %7 = alloca %struct.ddi_regoff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gma_encoder* %0, %struct.gma_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %15, i32 0, i32 0
  %17 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %16, align 8
  store %struct.cdv_intel_dp* %17, %struct.cdv_intel_dp** %6, align 8
  %18 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %6, align 8
  %19 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DP_B, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.ddi_regoff*, %struct.ddi_regoff** @ddi_DP_train_table, align 8
  %25 = getelementptr inbounds %struct.ddi_regoff, %struct.ddi_regoff* %24, i64 0
  store %struct.ddi_regoff* %25, %struct.ddi_regoff** %7, align 8
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.ddi_regoff*, %struct.ddi_regoff** @ddi_DP_train_table, align 8
  %28 = getelementptr inbounds %struct.ddi_regoff, %struct.ddi_regoff* %27, i64 1
  store %struct.ddi_regoff* %28, %struct.ddi_regoff** %7, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @DP_TRAIN_PRE_EMPHASIS_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %38, %39
  %41 = icmp sgt i32 %40, 3
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %125

43:                                               ; preds = %29
  %44 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %46 = call i32 @cdv_sb_reset(%struct.drm_device* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = load %struct.ddi_regoff*, %struct.ddi_regoff** %7, align 8
  %49 = getelementptr inbounds %struct.ddi_regoff, %struct.ddi_regoff* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cdv_sb_write(%struct.drm_device* %47, i32 %50, i32 84226362)
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = load %struct.ddi_regoff*, %struct.ddi_regoff** %7, align 8
  %54 = getelementptr inbounds %struct.ddi_regoff, %struct.ddi_regoff* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cdv_sb_write(%struct.drm_device* %52, i32 %55, i32 1128292437)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %57, %58
  %60 = mul nsw i32 %59, 2
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %72

63:                                               ; preds = %43
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %68 = load %struct.ddi_regoff*, %struct.ddi_regoff** %7, align 8
  %69 = getelementptr inbounds %struct.ddi_regoff, %struct.ddi_regoff* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cdv_sb_write(%struct.drm_device* %67, i32 %70, i32 1433635156)
  br label %83

72:                                               ; preds = %63, %43
  %73 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %74 = load %struct.ddi_regoff*, %struct.ddi_regoff** %7, align 8
  %75 = getelementptr inbounds %struct.ddi_regoff, %struct.ddi_regoff* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** @dp_vswing_premph_table, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cdv_sb_write(%struct.drm_device* %73, i32 %76, i32 %81)
  br label %83

83:                                               ; preds = %72, %66
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* @DP_TRAIN_VOLTAGE_SWING_LEVEL_3, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %91 = load %struct.ddi_regoff*, %struct.ddi_regoff** %7, align 8
  %92 = getelementptr inbounds %struct.ddi_regoff, %struct.ddi_regoff* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @cdv_sb_write(%struct.drm_device* %90, i32 %93, i32 1887445056)
  br label %101

95:                                               ; preds = %83
  %96 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %97 = load %struct.ddi_regoff*, %struct.ddi_regoff** %7, align 8
  %98 = getelementptr inbounds %struct.ddi_regoff, %struct.ddi_regoff* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cdv_sb_write(%struct.drm_device* %96, i32 %99, i32 1082138688)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %103 = load %struct.ddi_regoff*, %struct.ddi_regoff** %7, align 8
  %104 = getelementptr inbounds %struct.ddi_regoff, %struct.ddi_regoff* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @cdv_sb_write(%struct.drm_device* %102, i32 %105, i32 -1019191211)
  %107 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %108 = load %struct.ddi_regoff*, %struct.ddi_regoff** %7, align 8
  %109 = getelementptr inbounds %struct.ddi_regoff, %struct.ddi_regoff* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @cdv_sb_write(%struct.drm_device* %107, i32 %110, i32 520290368)
  %112 = load i32, i32* %9, align 4
  %113 = mul nsw i32 2, %112
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  %115 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %116 = load %struct.ddi_regoff*, %struct.ddi_regoff** %7, align 8
  %117 = getelementptr inbounds %struct.ddi_regoff, %struct.ddi_regoff* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** @dp_vswing_premph_table, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @cdv_sb_write(%struct.drm_device* %115, i32 %118, i32 %123)
  br label %125

125:                                              ; preds = %101, %42
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @cdv_sb_reset(%struct.drm_device*) #1

declare dso_local i32 @cdv_sb_write(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
