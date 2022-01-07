; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i64, i64*, i32**, i32, i32*, i32** }
%struct.sensor_device_attribute = type { i32 }

@sf4 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@sf3 = common dso_local global i64 0, align 8
@nct6775 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Inconsistent trip points, not switching to SmartFan IV mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Adjust trip points and try again\0A\00", align 1
@off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct6775_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.nct6775_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.nct6775_data* %17, %struct.nct6775_data** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %11, align 8
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @kstrtoul(i8* %23, i32 10, i64* %13)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %5, align 4
  br label %134

29:                                               ; preds = %4
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @sf4, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %134

36:                                               ; preds = %29
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* @sf3, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %42 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @nct6775, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %134

49:                                               ; preds = %40, %36
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @sf4, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @check_trip_points(%struct.nct6775_data* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %134

65:                                               ; preds = %53, %49
  %66 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %67 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %66, i32 0, i32 3
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %71 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %69, i64* %75, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @off, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %65
  %80 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %81 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %80, i32 0, i32 2
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 255, i32* %87, align 4
  %88 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %89 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %90 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %89, i32 0, i32 5
  %91 = load i32**, i32*** %90, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @nct6775_write_value(%struct.nct6775_data* %88, i32 %97, i32 255)
  br label %99

99:                                               ; preds = %79, %65
  %100 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @pwm_update_registers(%struct.nct6775_data* %100, i32 %101)
  %103 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %104 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %105 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @nct6775_read_value(%struct.nct6775_data* %103, i32 %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = and i32 %112, 15
  store i32 %113, i32* %15, align 4
  %114 = load i64, i64* %13, align 8
  %115 = call i32 @pwm_enable_to_reg(i64 %114)
  %116 = shl i32 %115, 4
  %117 = load i32, i32* %15, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %15, align 4
  %119 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %120 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %121 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @nct6775_write_value(%struct.nct6775_data* %119, i32 %126, i32 %127)
  %129 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %130 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %129, i32 0, i32 3
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i64, i64* %9, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %99, %58, %46, %33, %27
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @check_trip_points(%struct.nct6775_data*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @pwm_update_registers(%struct.nct6775_data*, i32) #1

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i32) #1

declare dso_local i32 @pwm_enable_to_reg(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
