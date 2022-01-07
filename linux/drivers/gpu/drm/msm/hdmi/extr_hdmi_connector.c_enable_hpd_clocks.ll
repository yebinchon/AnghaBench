; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_enable_hpd_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_enable_hpd_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { i32*, %struct.TYPE_2__*, %struct.hdmi_platform_config* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hdmi_platform_config = type { i32, i32*, i64* }

@.str = private unnamed_addr constant [27 x i8] c"failed to set clk %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to enable hpd clk: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi*, i32)* @enable_hpd_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_hpd_clocks(%struct.hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_platform_config*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hdmi* %0, %struct.hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %10 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %9, i32 0, i32 2
  %11 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %10, align 8
  store %struct.hdmi_platform_config* %11, %struct.hdmi_platform_config** %5, align 8
  %12 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %13 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %96

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %92, %18
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %5, align 8
  %22 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %95

25:                                               ; preds = %19
  %26 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %5, align 8
  %27 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %69

30:                                               ; preds = %25
  %31 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %5, align 8
  %32 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %30
  %40 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %41 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %5, align 8
  %48 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @clk_set_rate(i32 %46, i64 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %39
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %5, align 8
  %60 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_warn(%struct.device* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %39
  br label %69

69:                                               ; preds = %68, %30, %25
  %70 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %71 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @clk_prepare_enable(i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %69
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %5, align 8
  %83 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @DRM_DEV_ERROR(%struct.device* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %80, %69
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %19

95:                                               ; preds = %19
  br label %117

96:                                               ; preds = %2
  %97 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %5, align 8
  %98 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %113, %96
  %102 = load i32, i32* %7, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %106 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @clk_disable_unprepare(i32 %111)
  br label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %7, align 4
  br label %101

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116, %95
  ret void
}

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
