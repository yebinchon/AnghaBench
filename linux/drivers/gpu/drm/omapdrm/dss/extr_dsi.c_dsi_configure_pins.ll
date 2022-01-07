; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_configure_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_configure_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.omap_dsi_pin_config = type { i32, i32* }
%struct.dsi_data = type { i32, i32, i32 }
%struct.dsi_lane_config = type { i32, i64 }

@DSI_MAX_NR_LANES = common dso_local global i32 0, align 4
@dsi_configure_pins.functions = internal constant [5 x i32] [i32 132, i32 131, i32 130, i32 129, i32 128], align 16
@EINVAL = common dso_local global i32 0, align 4
@DSI_LANE_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_dsi_pin_config*)* @dsi_configure_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_configure_pins(%struct.omap_dss_device* %0, %struct.omap_dsi_pin_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_dsi_pin_config*, align 8
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_dsi_pin_config* %1, %struct.omap_dsi_pin_config** %5, align 8
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %19 = call %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device* %18)
  store %struct.dsi_data* %19, %struct.dsi_data** %6, align 8
  %20 = load i32, i32* @DSI_MAX_NR_LANES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca %struct.dsi_lane_config, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load %struct.omap_dsi_pin_config*, %struct.omap_dsi_pin_config** %5, align 8
  %25 = getelementptr inbounds %struct.omap_dsi_pin_config, %struct.omap_dsi_pin_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.omap_dsi_pin_config*, %struct.omap_dsi_pin_config** %5, align 8
  %28 = getelementptr inbounds %struct.omap_dsi_pin_config, %struct.omap_dsi_pin_config* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %43, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %35 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 2
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = srem i32 %40, 2
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %32, %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %153

46:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %57, %46
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @DSI_MAX_NR_LANES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* @DSI_LANE_UNUSED, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dsi_lane_config, %struct.dsi_lane_config* %23, i64 %54
  %56 = getelementptr inbounds %struct.dsi_lane_config, %struct.dsi_lane_config* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 16
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %47

60:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %142, %60
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %145

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %16, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %82 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 2
  %85 = icmp sge i32 %80, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79, %65
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %153

89:                                               ; preds = %79
  %90 = load i32, i32* %17, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %17, align 4
  %94 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %95 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 2
  %98 = icmp sge i32 %93, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %92, %89
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %153

102:                                              ; preds = %92
  %103 = load i32, i32* %16, align 4
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %16, align 4
  %109 = sub nsw i32 %108, 1
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %153

114:                                              ; preds = %106
  store i64 1, i64* %15, align 8
  br label %124

115:                                              ; preds = %102
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %153

123:                                              ; preds = %115
  store i64 0, i64* %15, align 8
  br label %124

124:                                              ; preds = %123, %114
  %125 = load i32, i32* %16, align 4
  %126 = sdiv i32 %125, 2
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %14, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sdiv i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [5 x i32], [5 x i32]* @dsi_configure_pins.functions, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %14, align 8
  %134 = getelementptr inbounds %struct.dsi_lane_config, %struct.dsi_lane_config* %23, i64 %133
  %135 = getelementptr inbounds %struct.dsi_lane_config, %struct.dsi_lane_config* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 16
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* %14, align 8
  %138 = getelementptr inbounds %struct.dsi_lane_config, %struct.dsi_lane_config* %23, i64 %137
  %139 = getelementptr inbounds %struct.dsi_lane_config, %struct.dsi_lane_config* %138, i32 0, i32 1
  store i64 %136, i64* %139, align 8
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %124
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 2
  store i32 %144, i32* %12, align 4
  br label %61

145:                                              ; preds = %61
  %146 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %147 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @memcpy(i32 %148, %struct.dsi_lane_config* %23, i32 4)
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %152 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %153

153:                                              ; preds = %145, %120, %111, %99, %86, %43
  %154 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32, %struct.dsi_lane_config*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
