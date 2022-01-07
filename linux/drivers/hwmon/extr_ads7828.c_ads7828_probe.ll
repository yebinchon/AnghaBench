; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ads7828.c_ads7828_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ads7828.c_ads7828_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.ads7828_platform_data = type { i32, i32, i32 }
%struct.ads7828_data = type { i32, %struct.regulator*, i8* }
%struct.regulator = type { i32 }

@ADS7828_INT_VREF_MV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ti,differential-input\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@ADS7828_EXT_VREF_MV_MIN = common dso_local global i32 0, align 4
@ADS7828_EXT_VREF_MV_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ads7828 = common dso_local global i32 0, align 4
@ads2828_regmap_config = common dso_local global i32 0, align 4
@ads2830_regmap_config = common dso_local global i32 0, align 4
@ADS7828_CMD_PD1 = common dso_local global i32 0, align 4
@ADS7828_CMD_PD3 = common dso_local global i32 0, align 4
@ADS7828_CMD_SD_SE = common dso_local global i32 0, align 4
@ads7828_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ads7828_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads7828_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ads7828_platform_data*, align 8
  %8 = alloca %struct.ads7828_data*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.regulator*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.ads7828_platform_data* @dev_get_platdata(%struct.device* %19)
  store %struct.ads7828_platform_data* %20, %struct.ads7828_platform_data** %7, align 8
  %21 = load i32, i32* @ADS7828_INT_VREF_MV, align 4
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.ads7828_data* @devm_kzalloc(%struct.device* %22, i32 24, i32 %23)
  store %struct.ads7828_data* %24, %struct.ads7828_data** %8, align 8
  %25 = load %struct.ads7828_data*, %struct.ads7828_data** %8, align 8
  %26 = icmp ne %struct.ads7828_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %182

30:                                               ; preds = %2
  %31 = load %struct.ads7828_platform_data*, %struct.ads7828_platform_data** %7, align 8
  %32 = icmp ne %struct.ads7828_platform_data* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load %struct.ads7828_platform_data*, %struct.ads7828_platform_data** %7, align 8
  %35 = getelementptr inbounds %struct.ads7828_platform_data, %struct.ads7828_platform_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.ads7828_platform_data*, %struct.ads7828_platform_data** %7, align 8
  %38 = getelementptr inbounds %struct.ads7828_platform_data, %struct.ads7828_platform_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load %struct.ads7828_platform_data*, %struct.ads7828_platform_data** %7, align 8
  %44 = getelementptr inbounds %struct.ads7828_platform_data, %struct.ads7828_platform_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.ads7828_platform_data*, %struct.ads7828_platform_data** %7, align 8
  %49 = getelementptr inbounds %struct.ads7828_platform_data, %struct.ads7828_platform_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %42, %33
  br label %86

52:                                               ; preds = %30
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @of_property_read_bool(i64 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %61, i32* %12, align 4
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call %struct.regulator* @devm_regulator_get_optional(%struct.device* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.regulator* %63, %struct.regulator** %16, align 8
  %64 = load %struct.regulator*, %struct.regulator** %16, align 8
  %65 = call i64 @IS_ERR(%struct.regulator* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %57
  %68 = load %struct.regulator*, %struct.regulator** %16, align 8
  %69 = call i32 @regulator_get_voltage(%struct.regulator* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i8* @DIV_ROUND_CLOSEST(i32 %70, i32 1000)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @ADS7828_EXT_VREF_MV_MIN, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @ADS7828_EXT_VREF_MV_MAX, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76, %67
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %182

83:                                               ; preds = %76
  store i32 1, i32* %13, align 4
  br label %84

84:                                               ; preds = %83, %57
  br label %85

85:                                               ; preds = %84, %52
  br label %86

86:                                               ; preds = %85, %51
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.device, %struct.device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 1
  %95 = call i64 @of_device_get_match_data(%struct.device* %94)
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %15, align 4
  br label %101

97:                                               ; preds = %86
  %98 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %99 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @ADS7828_EXT_VREF_MV_MIN, align 4
  %104 = load i32, i32* @ADS7828_EXT_VREF_MV_MAX, align 4
  %105 = call i32 @clamp_val(i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @ads7828, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %101
  %110 = load i32, i32* %10, align 4
  %111 = mul i32 %110, 1000
  %112 = call i8* @DIV_ROUND_CLOSEST(i32 %111, i32 4096)
  %113 = load %struct.ads7828_data*, %struct.ads7828_data** %8, align 8
  %114 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %115, i32* @ads2828_regmap_config)
  %117 = bitcast i8* %116 to %struct.regulator*
  %118 = load %struct.ads7828_data*, %struct.ads7828_data** %8, align 8
  %119 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %118, i32 0, i32 1
  store %struct.regulator* %117, %struct.regulator** %119, align 8
  br label %131

120:                                              ; preds = %101
  %121 = load i32, i32* %10, align 4
  %122 = mul i32 %121, 1000
  %123 = call i8* @DIV_ROUND_CLOSEST(i32 %122, i32 256)
  %124 = load %struct.ads7828_data*, %struct.ads7828_data** %8, align 8
  %125 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %126, i32* @ads2830_regmap_config)
  %128 = bitcast i8* %127 to %struct.regulator*
  %129 = load %struct.ads7828_data*, %struct.ads7828_data** %8, align 8
  %130 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %129, i32 0, i32 1
  store %struct.regulator* %128, %struct.regulator** %130, align 8
  br label %131

131:                                              ; preds = %120, %109
  %132 = load %struct.ads7828_data*, %struct.ads7828_data** %8, align 8
  %133 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %132, i32 0, i32 1
  %134 = load %struct.regulator*, %struct.regulator** %133, align 8
  %135 = call i64 @IS_ERR(%struct.regulator* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.ads7828_data*, %struct.ads7828_data** %8, align 8
  %139 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %138, i32 0, i32 1
  %140 = load %struct.regulator*, %struct.regulator** %139, align 8
  %141 = call i32 @PTR_ERR(%struct.regulator* %140)
  store i32 %141, i32* %3, align 4
  br label %182

142:                                              ; preds = %131
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* @ADS7828_CMD_PD1, align 4
  br label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @ADS7828_CMD_PD3, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = load %struct.ads7828_data*, %struct.ads7828_data** %8, align 8
  %152 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load i32, i32* @ADS7828_CMD_SD_SE, align 4
  %157 = load %struct.ads7828_data*, %struct.ads7828_data** %8, align 8
  %158 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %149
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %161
  %165 = load %struct.ads7828_data*, %struct.ads7828_data** %8, align 8
  %166 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %165, i32 0, i32 1
  %167 = load %struct.regulator*, %struct.regulator** %166, align 8
  %168 = load %struct.ads7828_data*, %struct.ads7828_data** %8, align 8
  %169 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @regmap_read(%struct.regulator* %167, i32 %170, i32* %14)
  br label %172

172:                                              ; preds = %164, %161
  %173 = load %struct.device*, %struct.device** %6, align 8
  %174 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ads7828_data*, %struct.ads7828_data** %8, align 8
  %178 = load i32, i32* @ads7828_groups, align 4
  %179 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %173, i32 %176, %struct.ads7828_data* %177, i32 %178)
  store %struct.device* %179, %struct.device** %9, align 8
  %180 = load %struct.device*, %struct.device** %9, align 8
  %181 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %180)
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %172, %137, %80, %27
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.ads7828_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.ads7828_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_bool(i64, i8*) #1

declare dso_local %struct.regulator* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_get_voltage(%struct.regulator*) #1

declare dso_local i8* @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @regmap_read(%struct.regulator*, i32, i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.ads7828_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
