; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_f75375_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_f75375_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.f75375_data = type { i64, i32, i32 }
%struct.f75375s_platform_data = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@f75375_group = common dso_local global i32 0, align 4
@f75373 = common dso_local global i64 0, align 8
@sensor_dev_attr_pwm1_mode = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@sensor_dev_attr_pwm2_mode = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @f75375_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f75375_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.f75375_data*, align 8
  %7 = alloca %struct.f75375s_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.f75375s_platform_data* @dev_get_platdata(%struct.TYPE_12__* %10)
  store %struct.f75375s_platform_data* %11, %struct.f75375s_platform_data** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = call i32 @i2c_check_functionality(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %107

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.f75375_data* @devm_kzalloc(%struct.TYPE_12__* %23, i32 16, i32 %24)
  store %struct.f75375_data* %25, %struct.f75375_data** %6, align 8
  %26 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %27 = icmp ne %struct.f75375_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %107

31:                                               ; preds = %21
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %34 = call i32 @i2c_set_clientdata(%struct.i2c_client* %32, %struct.f75375_data* %33)
  %35 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %36 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %35, i32 0, i32 2
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %42 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = call i32 @sysfs_create_group(i32* %45, i32* @f75375_group)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %107

51:                                               ; preds = %31
  %52 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %53 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @f75373, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %51
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* @S_IRUGO, align 4
  %62 = load i32, i32* @S_IWUSR, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @sysfs_chmod_file(i32* %60, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sensor_dev_attr_pwm1_mode, i32 0, i32 0, i32 0), i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %101

68:                                               ; preds = %57
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* @S_IRUGO, align 4
  %73 = load i32, i32* @S_IWUSR, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @sysfs_chmod_file(i32* %71, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sensor_dev_attr_pwm2_mode, i32 0, i32 0, i32 0), i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %101

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %51
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = call i32 @hwmon_device_register(%struct.TYPE_12__* %82)
  %84 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %85 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %87 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @IS_ERR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %93 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %8, align 4
  br label %101

96:                                               ; preds = %80
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %99 = load %struct.f75375s_platform_data*, %struct.f75375s_platform_data** %7, align 8
  %100 = call i32 @f75375_init(%struct.i2c_client* %97, %struct.f75375_data* %98, %struct.f75375s_platform_data* %99)
  store i32 0, i32* %3, align 4
  br label %107

101:                                              ; preds = %91, %78, %67
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = call i32 @sysfs_remove_group(i32* %104, i32* @f75375_group)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %101, %96, %49, %28, %18
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.f75375s_platform_data* @dev_get_platdata(%struct.TYPE_12__*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.f75375_data* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.f75375_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @sysfs_chmod_file(i32*, i32*, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_12__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @f75375_init(%struct.i2c_client*, %struct.f75375_data*, %struct.f75375s_platform_data*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
