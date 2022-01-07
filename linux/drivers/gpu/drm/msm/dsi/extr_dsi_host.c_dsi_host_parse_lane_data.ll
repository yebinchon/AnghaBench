; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_host_parse_lane_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_host_parse_lane_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"data-lanes\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to find data lane mapping, using default\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"bad number of data lanes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to read lane data\0A\00", align 1
@supported_data_lane_swaps = common dso_local global i32** null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"bad physical lane entry %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_dsi_host*, %struct.device_node*)* @dsi_host_parse_lane_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_host_parse_lane_data(%struct.msm_dsi_host* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_dsi_host*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %15 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %16 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call %struct.property* @of_find_property(%struct.device_node* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %11)
  store %struct.property* %20, %struct.property** %7, align 8
  %21 = load %struct.property*, %struct.property** %7, align 8
  %22 = icmp ne %struct.property* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 @DRM_DEV_DEBUG(%struct.device* %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %121

26:                                               ; preds = %2
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %26
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %121

41:                                               ; preds = %33
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %44 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @of_property_read_u32_array(%struct.device_node* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %121

55:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %115, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32**, i32*** @supported_data_lane_swaps, align 8
  %59 = call i32 @ARRAY_SIZE(i32** %58)
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %118

61:                                               ; preds = %56
  %62 = load i32**, i32*** @supported_data_lane_swaps, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %103, %61
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %106

71:                                               ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 3
  br i1 %82, label %83, label %90

83:                                               ; preds = %77, %71
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %83, %77
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %106

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %67

106:                                              ; preds = %101, %67
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %113 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  store i32 0, i32* %3, align 4
  br label %121

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %56

118:                                              ; preds = %56
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %110, %51, %36, %23
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @DRM_DEV_DEBUG(%struct.device*, i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
