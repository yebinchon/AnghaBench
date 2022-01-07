; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina2xx.c_ina2xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina2xx.c_ina2xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.ina2xx_data = type { i32, i32**, %struct.device*, %struct.TYPE_5__*, i32 }
%struct.ina2xx_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ina2xx_config = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"shunt-resistor\00", align 1
@INA2XX_RSHUNT_DEFAULT = common dso_local global i32 0, align 4
@ina2xx_regmap_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"error configuring the device: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ina2xx_group = common dso_local global i32 0, align 4
@ina226 = common dso_local global i32 0, align 4
@ina226_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"power monitor %s (Rshunt = %li uOhm)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ina2xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina2xx_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ina2xx_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ina2xx_platform_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  store %struct.device* %15, %struct.device** %6, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = call i64 @of_device_get_match_data(%struct.device* %23)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %12, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.ina2xx_data* @devm_kzalloc(%struct.device* %31, i32 40, i32 %32)
  store %struct.ina2xx_data* %33, %struct.ina2xx_data** %7, align 8
  %34 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %35 = icmp ne %struct.ina2xx_data* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %146

39:                                               ; preds = %30
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ina2xx_config, align 8
  %41 = load i32, i32* %12, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %45 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %44, i32 0, i32 3
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %45, align 8
  %46 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %47 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %46, i32 0, i32 4
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @of_property_read_u32(i64 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %9)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %39
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call %struct.ina2xx_platform_data* @dev_get_platdata(%struct.device* %55)
  store %struct.ina2xx_platform_data* %56, %struct.ina2xx_platform_data** %13, align 8
  %57 = load %struct.ina2xx_platform_data*, %struct.ina2xx_platform_data** %13, align 8
  %58 = icmp ne %struct.ina2xx_platform_data* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.ina2xx_platform_data*, %struct.ina2xx_platform_data** %13, align 8
  %61 = getelementptr inbounds %struct.ina2xx_platform_data, %struct.ina2xx_platform_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  br label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @INA2XX_RSHUNT_DEFAULT, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %39
  %67 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @ina2xx_set_shunt(%struct.ina2xx_data* %67, i32 %68)
  %70 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %71 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ina2xx_regmap_config, i32 0, i32 0), align 4
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = call %struct.device* @devm_regmap_init_i2c(%struct.i2c_client* %75, %struct.TYPE_4__* @ina2xx_regmap_config)
  %77 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %78 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %77, i32 0, i32 2
  store %struct.device* %76, %struct.device** %78, align 8
  %79 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %80 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %79, i32 0, i32 2
  %81 = load %struct.device*, %struct.device** %80, align 8
  %82 = call i64 @IS_ERR(%struct.device* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %66
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %88 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %87, i32 0, i32 2
  %89 = load %struct.device*, %struct.device** %88, align 8
  %90 = call i32 @PTR_ERR(%struct.device* %89)
  store i32 %90, i32* %3, align 4
  br label %146

91:                                               ; preds = %66
  %92 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %93 = call i32 @ina2xx_init(%struct.ina2xx_data* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %146

102:                                              ; preds = %91
  %103 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %104 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %103, i32 0, i32 1
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32*, i32** %105, i64 %108
  store i32* @ina2xx_group, i32** %109, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @ina226, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %102
  %114 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %115 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %114, i32 0, i32 1
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32*, i32** %116, i64 %119
  store i32* @ina226_group, i32** %120, align 8
  br label %121

121:                                              ; preds = %113, %102
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %127 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %128 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %122, i32 %125, %struct.ina2xx_data* %126, i32** %129)
  store %struct.device* %130, %struct.device** %8, align 8
  %131 = load %struct.device*, %struct.device** %8, align 8
  %132 = call i64 @IS_ERR(%struct.device* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %121
  %135 = load %struct.device*, %struct.device** %8, align 8
  %136 = call i32 @PTR_ERR(%struct.device* %135)
  store i32 %136, i32* %3, align 4
  br label %146

137:                                              ; preds = %121
  %138 = load %struct.device*, %struct.device** %6, align 8
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ina2xx_data*, %struct.ina2xx_data** %7, align 8
  %143 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @dev_info(%struct.device* %138, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %141, i32 %144)
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %137, %134, %96, %84, %36
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.ina2xx_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local %struct.ina2xx_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @ina2xx_set_shunt(%struct.ina2xx_data*, i32) #1

declare dso_local %struct.device* @devm_regmap_init_i2c(%struct.i2c_client*, %struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @ina2xx_init(%struct.ina2xx_data*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.ina2xx_data*, i32**) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
