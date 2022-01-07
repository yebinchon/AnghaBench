; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_beep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64 }
%struct.nct6775_data = type { i32*, i64, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_beep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_beep(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.nct6775_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute_2* %17, %struct.sensor_device_attribute_2** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.nct6775_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.nct6775_data* %19, %struct.nct6775_data** %11, align 8
  %20 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %21 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = ashr i32 %28, 3
  store i32 %29, i32* %13, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @kstrtoul(i8* %30, i32 10, i64* %14)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %5, align 4
  br label %89

36:                                               ; preds = %4
  %37 = load i64, i64* %14, align 8
  %38 = icmp ugt i64 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %89

42:                                               ; preds = %36
  %43 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %44 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %43, i32 0, i32 2
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = shl i64 1, %50
  %52 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %53 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = or i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %65

56:                                               ; preds = %42
  %57 = load i32, i32* %12, align 4
  %58 = zext i32 %57 to i64
  %59 = shl i64 1, %58
  %60 = xor i64 %59, -1
  %61 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %62 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = and i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %56, %48
  %66 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %67 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %68 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %75 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = shl i32 %77, 3
  %79 = zext i32 %78 to i64
  %80 = lshr i64 %76, %79
  %81 = and i64 %80, 255
  %82 = trunc i64 %81 to i32
  %83 = call i32 @nct6775_write_value(%struct.nct6775_data* %66, i32 %73, i32 %82)
  %84 = load %struct.nct6775_data*, %struct.nct6775_data** %11, align 8
  %85 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i64, i64* %9, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %65, %39, %34
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
