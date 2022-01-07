; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc6w201.c_temp_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc6w201.c_temp_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.emc6w201_data = type { i64**, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@min = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.emc6w201_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.emc6w201_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.emc6w201_data* %18, %struct.emc6w201_data** %10, align 8
  %19 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %20 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %19, i32 0, i32 2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %11, align 8
  %22 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %23 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %27 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @kstrtol(i8* %30, i32 10, i64* %15)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %5, align 4
  br label %93

36:                                               ; preds = %4
  %37 = load i64, i64* %15, align 8
  %38 = call i64 @clamp_val(i64 %37, i32 -127000, i32 127000)
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %15, align 8
  %40 = call i64 @DIV_ROUND_CLOSEST(i64 %39, i32 1000)
  store i64 %40, i64* %15, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @min, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @EMC6W201_REG_TEMP_LOW(i32 %45)
  br label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @EMC6W201_REG_TEMP_HIGH(i32 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i32 [ %46, %44 ], [ %49, %47 ]
  store i32 %51, i32* %16, align 4
  %52 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %53 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %52, i32 0, i32 1
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load i64, i64* %15, align 8
  %56 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %57 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %56, i32 0, i32 0
  %58 = load i64**, i64*** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64*, i64** %58, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %55, i64* %65, align 8
  %66 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %69 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %68, i32 0, i32 0
  %70 = load i64**, i64*** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64*, i64** %70, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @emc6w201_write8(%struct.i2c_client* %66, i32 %67, i64 %78)
  store i32 %79, i32* %14, align 4
  %80 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %81 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %50
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  br label %90

88:                                               ; preds = %50
  %89 = load i64, i64* %9, align 8
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i64 [ %87, %85 ], [ %89, %88 ]
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %34
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.emc6w201_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @EMC6W201_REG_TEMP_LOW(i32) #1

declare dso_local i32 @EMC6W201_REG_TEMP_HIGH(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @emc6w201_write8(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
