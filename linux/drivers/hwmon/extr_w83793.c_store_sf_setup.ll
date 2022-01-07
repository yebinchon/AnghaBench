; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_store_sf_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_store_sf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i32, i32, i32, i32, i32 }

@SETUP_PWM_DEFAULT = common dso_local global i32 0, align 4
@W83793_REG_PWM_DEFAULT = common dso_local global i32 0, align 4
@SETUP_PWM_UPTIME = common dso_local global i32 0, align 4
@W83793_REG_PWM_UPTIME = common dso_local global i32 0, align 4
@SETUP_PWM_DOWNTIME = common dso_local global i32 0, align 4
@W83793_REG_PWM_DOWNTIME = common dso_local global i32 0, align 4
@W83793_REG_TEMP_CRITICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_sf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_sf_setup(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.w83793_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute_2* %17, %struct.sensor_device_attribute_2** %10, align 8
  %18 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.i2c_client* @to_i2c_client(%struct.device* %21)
  store %struct.i2c_client* %22, %struct.i2c_client** %12, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %24 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %23)
  store %struct.w83793_data* %24, %struct.w83793_data** %13, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtol(i8* %25, i32 10, i64* %14)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %137

31:                                               ; preds = %4
  %32 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %33 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %32, i32 0, i32 4
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @SETUP_PWM_DEFAULT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %31
  %39 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %40 = load i32, i32* @W83793_REG_PWM_DEFAULT, align 4
  %41 = call i32 @w83793_read_value(%struct.i2c_client* %39, i32 %40)
  %42 = and i32 %41, 192
  %43 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %44 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @clamp_val(i64 %45, i32 0, i32 255)
  %47 = ashr i32 %46, 2
  %48 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %49 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %53 = load i32, i32* @W83793_REG_PWM_DEFAULT, align 4
  %54 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %55 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @w83793_write_value(%struct.i2c_client* %52, i32 %53, i32 %56)
  br label %131

58:                                               ; preds = %31
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @SETUP_PWM_UPTIME, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load i64, i64* %14, align 8
  %64 = call i8* @TIME_TO_REG(i64 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %67 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %69 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %75 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %79 = load i32, i32* @W83793_REG_PWM_UPTIME, align 4
  %80 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %81 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @w83793_write_value(%struct.i2c_client* %78, i32 %79, i32 %82)
  br label %130

84:                                               ; preds = %58
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @SETUP_PWM_DOWNTIME, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %84
  %89 = load i64, i64* %14, align 8
  %90 = call i8* @TIME_TO_REG(i64 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %93 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %95 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %101 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %105 = load i32, i32* @W83793_REG_PWM_DOWNTIME, align 4
  %106 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %107 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @w83793_write_value(%struct.i2c_client* %104, i32 %105, i32 %108)
  br label %129

110:                                              ; preds = %84
  %111 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %112 = load i32, i32* @W83793_REG_TEMP_CRITICAL, align 4
  %113 = call i32 @w83793_read_value(%struct.i2c_client* %111, i32 %112)
  %114 = and i32 %113, 128
  %115 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %116 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i64, i64* %14, align 8
  %118 = call i32 @TEMP_TO_REG(i64 %117, i32 0, i32 127)
  %119 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %120 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %124 = load i32, i32* @W83793_REG_TEMP_CRITICAL, align 4
  %125 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %126 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @w83793_write_value(%struct.i2c_client* %123, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %110, %88
  br label %130

130:                                              ; preds = %129, %62
  br label %131

131:                                              ; preds = %130, %38
  %132 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %133 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %132, i32 0, i32 4
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i64, i64* %9, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %131, %29
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i8* @TIME_TO_REG(i64) #1

declare dso_local i32 @TEMP_TO_REG(i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
