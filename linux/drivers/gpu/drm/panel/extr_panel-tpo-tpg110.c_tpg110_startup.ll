; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-tpg110.c_tpg110_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-tpg110.c_tpg110_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg110_panel_mode = type { i32 }
%struct.tpg110 = type { i32, %struct.tpg110_panel_mode*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"de-asserted GRESTB\0A\00", align 1
@TPG110_TEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed communication test\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TPG110_CHIPID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"TPG110 chip ID: %d version: %d\0A\00", align 1
@TPG110_CTRL1 = common dso_local global i32 0, align 4
@TPG110_RES_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"IN 400x240 RGB -> OUT 800x480 RGB (dual scan)\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"IN 480x272 RGB -> OUT 800x480 RGB (dual scan)\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"480x640 RGB\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"480x272 RGB\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"640x480 RGB\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"800x480 RGB\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"ILLEGAL RESOLUTION 0x%02x\0A\00", align 1
@tpg110_modes = common dso_local global %struct.tpg110_panel_mode* null, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"unsupported mode (%02x) detected\0A\00", align 1
@TPG110_CTRL2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"resolution and standby is controlled by %s\0A\00", align 1
@TPG110_CTRL2_RES_PM_CTRL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"hardware\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpg110*)* @tpg110_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpg110_startup(%struct.tpg110* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpg110*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpg110_panel_mode*, align 8
  store %struct.tpg110* %0, %struct.tpg110** %3, align 8
  %7 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %8 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @gpiod_set_value_cansleep(i32 %9, i32 0)
  %11 = call i32 @usleep_range(i32 1000, i32 2000)
  %12 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %13 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @DRM_DEV_DEBUG(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %17 = load i32, i32* @TPG110_TEST, align 4
  %18 = call i32 @tpg110_write_reg(%struct.tpg110* %16, i32 %17, i32 85)
  %19 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %20 = load i32, i32* @TPG110_TEST, align 4
  %21 = call i32 @tpg110_read_reg(%struct.tpg110* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 85
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %26 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %148

31:                                               ; preds = %1
  %32 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %33 = load i32, i32* @TPG110_CHIPID, align 4
  %34 = call i32 @tpg110_read_reg(%struct.tpg110* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %36 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 15
  %42 = call i32 (i32, i8*, ...) @DRM_DEV_INFO(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %41)
  %43 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %44 = load i32, i32* @TPG110_CTRL1, align 4
  %45 = call i32 @tpg110_read_reg(%struct.tpg110* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @TPG110_RES_MASK, align 4
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  switch i32 %49, label %80 [
    i32 133, label %50
    i32 131, label %55
    i32 130, label %60
    i32 132, label %65
    i32 129, label %70
    i32 128, label %75
  ]

50:                                               ; preds = %31
  %51 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %52 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @DRM_DEV_INFO(i32 %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %86

55:                                               ; preds = %31
  %56 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %57 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @DRM_DEV_INFO(i32 %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %86

60:                                               ; preds = %31
  %61 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %62 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @DRM_DEV_INFO(i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %86

65:                                               ; preds = %31
  %66 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %67 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @DRM_DEV_INFO(i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %86

70:                                               ; preds = %31
  %71 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %72 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @DRM_DEV_INFO(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %86

75:                                               ; preds = %31
  %76 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %77 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i8*, ...) @DRM_DEV_INFO(i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %86

80:                                               ; preds = %31
  %81 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %82 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %80, %75, %70, %65, %60, %55, %50
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 131
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 132, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %86
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %111, %90
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.tpg110_panel_mode*, %struct.tpg110_panel_mode** @tpg110_modes, align 8
  %94 = call i32 @ARRAY_SIZE(%struct.tpg110_panel_mode* %93)
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %91
  %97 = load %struct.tpg110_panel_mode*, %struct.tpg110_panel_mode** @tpg110_modes, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.tpg110_panel_mode, %struct.tpg110_panel_mode* %97, i64 %99
  store %struct.tpg110_panel_mode* %100, %struct.tpg110_panel_mode** %6, align 8
  %101 = load %struct.tpg110_panel_mode*, %struct.tpg110_panel_mode** %6, align 8
  %102 = getelementptr inbounds %struct.tpg110_panel_mode, %struct.tpg110_panel_mode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %96
  %107 = load %struct.tpg110_panel_mode*, %struct.tpg110_panel_mode** %6, align 8
  %108 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %109 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %108, i32 0, i32 1
  store %struct.tpg110_panel_mode* %107, %struct.tpg110_panel_mode** %109, align 8
  br label %114

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %91

114:                                              ; preds = %106, %91
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.tpg110_panel_mode*, %struct.tpg110_panel_mode** @tpg110_modes, align 8
  %117 = call i32 @ARRAY_SIZE(%struct.tpg110_panel_mode* %116)
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %121 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %148

127:                                              ; preds = %114
  %128 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %129 = load i32, i32* @TPG110_CTRL2, align 4
  %130 = call i32 @tpg110_read_reg(%struct.tpg110* %128, i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %132 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @TPG110_CTRL2_RES_PM_CTRL, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)
  %140 = call i32 (i32, i8*, ...) @DRM_DEV_INFO(i32 %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i8* %139)
  %141 = load i32, i32* @TPG110_CTRL2_RES_PM_CTRL, align 4
  %142 = load i32, i32* %4, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %4, align 4
  %144 = load %struct.tpg110*, %struct.tpg110** %3, align 8
  %145 = load i32, i32* @TPG110_CTRL2, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @tpg110_write_reg(%struct.tpg110* %144, i32 %145, i32 %146)
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %127, %119, %24
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*) #1

declare dso_local i32 @tpg110_write_reg(%struct.tpg110*, i32, i32) #1

declare dso_local i32 @tpg110_read_reg(%struct.tpg110*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @DRM_DEV_INFO(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.tpg110_panel_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
