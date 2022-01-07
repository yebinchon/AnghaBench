; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc6w201.c_fan_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc6w201.c_fan_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.emc6w201_data = type { i64**, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.emc6w201_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.emc6w201_data* %17, %struct.emc6w201_data** %10, align 8
  %18 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %19 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %26 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kstrtoul(i8* %29, i32 10, i64* %15)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %5, align 4
  br label %87

35:                                               ; preds = %4
  %36 = load i64, i64* %15, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i64 65535, i64* %15, align 8
  br label %44

39:                                               ; preds = %35
  %40 = load i64, i64* %15, align 8
  %41 = call i64 @DIV_ROUND_CLOSEST(i32 5400000, i64 %40)
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i64 @clamp_val(i64 %42, i32 0, i32 65534)
  store i64 %43, i64* %15, align 8
  br label %44

44:                                               ; preds = %39, %38
  %45 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %46 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %45, i32 0, i32 1
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load i64, i64* %15, align 8
  %49 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %50 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %49, i32 0, i32 0
  %51 = load i64**, i64*** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64*, i64** %51, i64 %53
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %48, i64* %58, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @EMC6W201_REG_FAN_MIN(i32 %60)
  %62 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %63 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %62, i32 0, i32 0
  %64 = load i64**, i64*** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64*, i64** %64, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @emc6w201_write16(%struct.i2c_client* %59, i32 %61, i64 %72)
  store i32 %73, i32* %14, align 4
  %74 = load %struct.emc6w201_data*, %struct.emc6w201_data** %10, align 8
  %75 = getelementptr inbounds %struct.emc6w201_data, %struct.emc6w201_data* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %44
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  br label %84

82:                                               ; preds = %44
  %83 = load i64, i64* %9, align 8
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i64 [ %81, %79 ], [ %83, %82 ]
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %33
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.emc6w201_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i64) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @emc6w201_write16(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @EMC6W201_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
