; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ina209_data = type { i32, i32, i32 }
%struct.ina2xx_platform_data = type { i64 }

@INA209_CALIBRATION = common dso_local global i32 0, align 4
@INA209_CONFIGURATION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"shunt-resistor\00", align 1
@INA209_SHUNT_DEFAULT = common dso_local global i32 0, align 4
@INA209_CONFIG_DEFAULT = common dso_local global i32 0, align 4
@INA209_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ina209_data*)* @ina209_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina209_init_client(%struct.i2c_client* %0, %struct.ina209_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ina209_data*, align 8
  %6 = alloca %struct.ina2xx_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.ina209_data* %1, %struct.ina209_data** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.ina2xx_platform_data* @dev_get_platdata(%struct.TYPE_2__* %10)
  store %struct.ina2xx_platform_data* %11, %struct.ina2xx_platform_data** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = load i32, i32* @INA209_CALIBRATION, align 4
  %14 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %96

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.ina209_data*, %struct.ina209_data** %5, align 8
  %22 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @INA209_CONFIGURATION, align 4
  %25 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %96

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ina209_data*, %struct.ina209_data** %5, align 8
  %33 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ina2xx_platform_data*, %struct.ina2xx_platform_data** %6, align 8
  %35 = icmp ne %struct.ina2xx_platform_data* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.ina2xx_platform_data*, %struct.ina2xx_platform_data** %6, align 8
  %38 = getelementptr inbounds %struct.ina2xx_platform_data, %struct.ina2xx_platform_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %96

44:                                               ; preds = %36
  %45 = load %struct.ina2xx_platform_data*, %struct.ina2xx_platform_data** %6, align 8
  %46 = getelementptr inbounds %struct.ina2xx_platform_data, %struct.ina2xx_platform_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  br label %78

49:                                               ; preds = %30
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @of_property_read_u32(i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %7)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %96

62:                                               ; preds = %56
  br label %77

63:                                               ; preds = %49
  %64 = load %struct.ina209_data*, %struct.ina209_data** %5, align 8
  %65 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.ina209_data*, %struct.ina209_data** %5, align 8
  %70 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 40960000, %71
  br label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @INA209_SHUNT_DEFAULT, align 4
  br label %75

75:                                               ; preds = %73, %68
  %76 = phi i32 [ %72, %68 ], [ %74, %73 ]
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %62
  br label %78

78:                                               ; preds = %77, %44
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load i32, i32* @INA209_CONFIGURATION, align 4
  %81 = load i32, i32* @INA209_CONFIG_DEFAULT, align 4
  %82 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %79, i32 %80, i32 %81)
  %83 = load i32, i32* @INA209_CONFIG_DEFAULT, align 4
  %84 = call i32 @ina209_interval_from_reg(i32 %83)
  %85 = load %struct.ina209_data*, %struct.ina209_data** %5, align 8
  %86 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = load i32, i32* @INA209_CALIBRATION, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sdiv i32 40960000, %89
  %91 = call i32 @clamp_val(i32 %90, i32 1, i32 65535)
  %92 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %87, i32 %88, i32 %91)
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = load i32, i32* @INA209_STATUS, align 4
  %95 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %93, i32 %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %78, %59, %41, %28, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.ina2xx_platform_data* @dev_get_platdata(%struct.TYPE_2__*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ina209_interval_from_reg(i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
