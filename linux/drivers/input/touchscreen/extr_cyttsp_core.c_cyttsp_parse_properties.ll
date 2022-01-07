; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_parse_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_parse_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyttsp = type { i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@CY_NUM_BL_KEYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CY_ACT_DIST_DFLT = common dso_local global i32 0, align 4
@CY_ACT_INTRVL_DFLT = common dso_local global i32 0, align 4
@CY_TCH_TMOUT_DFLT = common dso_local global i32 0, align 4
@CY_LP_INTRVL_DFLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bootloader-key\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"bootloader-key property could not be retrieved\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"use-handshake\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"active-distance\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"active-distance (%u) must be [0-15]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CY_ACT_DIST_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"active-interval-ms\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"active-interval-ms (%u) must be [0-255]\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"lowpower-interval-ms\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"lowpower-interval-ms (%u) must be [0-2550]\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"touch-timeout-ms\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"touch-timeout-ms (%u) must be [0-2550]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyttsp*)* @cyttsp_parse_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyttsp_parse_properties(%struct.cyttsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyttsp*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cyttsp* %0, %struct.cyttsp** %3, align 8
  %7 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %8 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %7, i32 0, i32 6
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @CY_NUM_BL_KEYS, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @devm_kzalloc(%struct.device* %10, i32 %11, i32 %12)
  %14 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %15 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %17 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %133

23:                                               ; preds = %1
  %24 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %25 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* @CY_ACT_DIST_DFLT, align 4
  %27 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %28 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @CY_ACT_INTRVL_DFLT, align 4
  %30 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %31 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @CY_TCH_TMOUT_DFLT, align 4
  %33 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %34 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @CY_LP_INTRVL_DFLT, align 4
  %36 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %37 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %40 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CY_NUM_BL_KEYS, align 4
  %43 = call i32 @device_property_read_u8_array(%struct.device* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %23
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %133

50:                                               ; preds = %23
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @device_property_present(%struct.device* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %54 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 @device_property_read_u32(%struct.device* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 15
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %133

67:                                               ; preds = %58
  %68 = load i32, i32* @CY_ACT_DIST_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %71 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %76 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %67, %50
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @device_property_read_u32(%struct.device* %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %5)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = icmp sgt i32 %84, 255
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %133

92:                                               ; preds = %83
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %95 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %92, %79
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @device_property_read_u32(%struct.device* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32* %5)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %5, align 4
  %102 = icmp sgt i32 %101, 2550
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %133

109:                                              ; preds = %100
  %110 = load i32, i32* %5, align 4
  %111 = sdiv i32 %110, 10
  %112 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %113 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %109, %96
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @device_property_read_u32(%struct.device* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32* %5)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = icmp sgt i32 %119, 2550
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %122, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %133

127:                                              ; preds = %118
  %128 = load i32, i32* %5, align 4
  %129 = sdiv i32 %128, 10
  %130 = load %struct.cyttsp*, %struct.cyttsp** %3, align 8
  %131 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %127, %114
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %121, %103, %86, %61, %46, %20
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @device_property_read_u8_array(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @device_property_present(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
