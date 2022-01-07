; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_dpcd_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_dpcd_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpcd_block = type { i32, i32, i64, i64 }
%struct.seq_file = type { %struct.drm_connector* }
%struct.drm_connector = type { i64, i64 }
%struct.intel_dp = type { i32 }
%struct.TYPE_2__ = type { i32 }

@connector_status_connected = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@i915_dpcd_debug = common dso_local global %struct.dpcd_block* null, align 8
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%04x: ERROR %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%04x: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_dpcd_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_dpcd_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.intel_dp*, align 8
  %8 = alloca [16 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dpcd_block*, align 8
  %12 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load %struct.drm_connector*, %struct.drm_connector** %14, align 8
  store %struct.drm_connector* %15, %struct.drm_connector** %6, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %17 = call %struct.TYPE_2__* @intel_attached_encoder(%struct.drm_connector* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call %struct.intel_dp* @enc_to_intel_dp(i32* %18)
  store %struct.intel_dp* %19, %struct.intel_dp** %7, align 8
  %20 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @connector_status_connected, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %115

28:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %111, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.dpcd_block*, %struct.dpcd_block** @i915_dpcd_debug, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.dpcd_block* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %114

34:                                               ; preds = %29
  %35 = load %struct.dpcd_block*, %struct.dpcd_block** @i915_dpcd_debug, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dpcd_block, %struct.dpcd_block* %35, i64 %37
  store %struct.dpcd_block* %38, %struct.dpcd_block** %11, align 8
  %39 = load %struct.dpcd_block*, %struct.dpcd_block** %11, align 8
  %40 = getelementptr inbounds %struct.dpcd_block, %struct.dpcd_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.dpcd_block*, %struct.dpcd_block** %11, align 8
  %45 = getelementptr inbounds %struct.dpcd_block, %struct.dpcd_block* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dpcd_block*, %struct.dpcd_block** %11, align 8
  %48 = getelementptr inbounds %struct.dpcd_block, %struct.dpcd_block* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  br label %62

53:                                               ; preds = %34
  %54 = load %struct.dpcd_block*, %struct.dpcd_block** %11, align 8
  %55 = getelementptr inbounds %struct.dpcd_block, %struct.dpcd_block* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %58
  %61 = phi i64 [ %56, %58 ], [ 1, %59 ]
  br label %62

62:                                               ; preds = %60, %43
  %63 = phi i64 [ %52, %43 ], [ %61, %60 ]
  store i64 %63, i64* %12, align 8
  %64 = load %struct.dpcd_block*, %struct.dpcd_block** %11, align 8
  %65 = getelementptr inbounds %struct.dpcd_block, %struct.dpcd_block* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %70 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %111

75:                                               ; preds = %68, %62
  %76 = load i64, i64* %12, align 8
  %77 = icmp ugt i64 %76, 64
  %78 = zext i1 %77 to i32
  %79 = call i64 @WARN_ON(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %111

82:                                               ; preds = %75
  %83 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %84 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %83, i32 0, i32 0
  %85 = load %struct.dpcd_block*, %struct.dpcd_block** %11, align 8
  %86 = getelementptr inbounds %struct.dpcd_block, %struct.dpcd_block* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @drm_dp_dpcd_read(i32* %84, i32 %87, i32* %88, i64 %89)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %82
  %94 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %95 = load %struct.dpcd_block*, %struct.dpcd_block** %11, align 8
  %96 = getelementptr inbounds %struct.dpcd_block, %struct.dpcd_block* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %9, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %99)
  br label %110

101:                                              ; preds = %82
  %102 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %103 = load %struct.dpcd_block*, %struct.dpcd_block** %11, align 8
  %104 = getelementptr inbounds %struct.dpcd_block, %struct.dpcd_block* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* %9, align 8
  %107 = trunc i64 %106 to i32
  %108 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %109 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %107, i32* %108)
  br label %110

110:                                              ; preds = %101, %93
  br label %111

111:                                              ; preds = %110, %81, %74
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %29

114:                                              ; preds = %29
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %25
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32*) #1

declare dso_local %struct.TYPE_2__* @intel_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.dpcd_block*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @drm_dp_dpcd_read(i32*, i32, i32*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
