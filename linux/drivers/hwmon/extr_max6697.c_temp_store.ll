; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_temp_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_temp_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.max6697_data = type { i64, i64, i64**, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@max6581 = common dso_local global i64 0, align 8
@MAX6697_REG_MAX = common dso_local global i32* null, align 8
@MAX6697_REG_CRIT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.max6697_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call %struct.max6697_data* @dev_get_drvdata(%struct.device* %23)
  store %struct.max6697_data* %24, %struct.max6697_data** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtol(i8* %25, i32 10, i64* %13)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %95

31:                                               ; preds = %4
  %32 = load %struct.max6697_data*, %struct.max6697_data** %12, align 8
  %33 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %32, i32 0, i32 3
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i64, i64* %13, align 8
  %36 = call i64 @DIV_ROUND_CLOSEST(i64 %35, i32 1000)
  %37 = load %struct.max6697_data*, %struct.max6697_data** %12, align 8
  %38 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load %struct.max6697_data*, %struct.max6697_data** %12, align 8
  %43 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @max6581, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 255, i32 127
  %49 = call i64 @clamp_val(i64 %41, i32 0, i32 %48)
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load %struct.max6697_data*, %struct.max6697_data** %12, align 8
  %52 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %51, i32 0, i32 2
  %53 = load i64**, i64*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64*, i64** %53, i64 %55
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 %50, i64* %60, align 8
  %61 = load %struct.max6697_data*, %struct.max6697_data** %12, align 8
  %62 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %72

66:                                               ; preds = %31
  %67 = load i32*, i32** @MAX6697_REG_MAX, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  br label %78

72:                                               ; preds = %31
  %73 = load i32*, i32** @MAX6697_REG_CRIT, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  br label %78

78:                                               ; preds = %72, %66
  %79 = phi i32 [ %71, %66 ], [ %77, %72 ]
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @i2c_smbus_write_byte_data(i32 %63, i32 %79, i64 %80)
  store i32 %81, i32* %14, align 4
  %82 = load %struct.max6697_data*, %struct.max6697_data** %12, align 8
  %83 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %82, i32 0, i32 3
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  br label %92

90:                                               ; preds = %78
  %91 = load i64, i64* %9, align 8
  br label %92

92:                                               ; preds = %90, %87
  %93 = phi i64 [ %89, %87 ], [ %91, %90 ]
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %92, %29
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.max6697_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
