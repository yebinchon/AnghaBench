; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_msm_hdmi_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_msm_hdmi_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.hdmi_bridge = type { %struct.hdmi* }
%struct.hdmi = type { i32*, i32, i32*, %struct.TYPE_2__*, %struct.hdmi_platform_config* }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi_platform_config = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [41 x i8] c"failed to enable pwr regulator: %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"pixclock: %lu\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to set pixel clk: %s (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to enable pwr clk: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @msm_hdmi_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_hdmi_power_on(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.hdmi_bridge*, align 8
  %5 = alloca %struct.hdmi*, align 8
  %6 = alloca %struct.hdmi_platform_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %10 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %13 = call %struct.hdmi_bridge* @to_hdmi_bridge(%struct.drm_bridge* %12)
  store %struct.hdmi_bridge* %13, %struct.hdmi_bridge** %4, align 8
  %14 = load %struct.hdmi_bridge*, %struct.hdmi_bridge** %4, align 8
  %15 = getelementptr inbounds %struct.hdmi_bridge, %struct.hdmi_bridge* %14, i32 0, i32 0
  %16 = load %struct.hdmi*, %struct.hdmi** %15, align 8
  store %struct.hdmi* %16, %struct.hdmi** %5, align 8
  %17 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %18 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %17, i32 0, i32 4
  %19 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %18, align 8
  store %struct.hdmi_platform_config* %19, %struct.hdmi_platform_config** %6, align 8
  %20 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %21 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @pm_runtime_get_sync(i32* %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %56, %1
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %6, align 8
  %28 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %25
  %32 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %33 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regulator_enable(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %31
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %6, align 8
  %47 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @DRM_DEV_ERROR(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %42, %31
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %25

59:                                               ; preds = %25
  %60 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %6, align 8
  %61 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %59
  %65 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %66 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %70 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %75 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @clk_set_rate(i32 %73, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %64
  %81 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %82 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %6, align 8
  %85 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @DRM_DEV_ERROR(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %80, %64
  br label %92

92:                                               ; preds = %91, %59
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %124, %92
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %6, align 8
  %96 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %93
  %100 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %101 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @clk_prepare_enable(i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %99
  %111 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %112 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %6, align 8
  %115 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @DRM_DEV_ERROR(i32 %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %110, %99
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %93

127:                                              ; preds = %93
  ret void
}

declare dso_local %struct.hdmi_bridge* @to_hdmi_bridge(%struct.drm_bridge*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
