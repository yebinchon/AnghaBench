; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7802.c_pwm_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7802.c_pwm_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct7802_data = type { i32 }
%struct.sensor_device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct7802_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.nct7802_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.nct7802_data* %15, %struct.nct7802_data** %10, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtou8(i8* %18, i32 0, i32* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %63

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = icmp sgt i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %63

33:                                               ; preds = %27
  %34 = load %struct.nct7802_data*, %struct.nct7802_data** %10, align 8
  %35 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @REG_SMARTFAN_EN(i32 %39)
  %41 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %42 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SMARTFAN_EN_SHIFT(i32 %43)
  %45 = shl i32 1, %44
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %49 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @SMARTFAN_EN_SHIFT(i32 %50)
  %52 = shl i32 %47, %51
  %53 = call i32 @regmap_update_bits(i32 %36, i32 %40, i32 %45, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %33
  %57 = sext i32 %54 to i64
  br label %60

58:                                               ; preds = %33
  %59 = load i64, i64* %9, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i64 [ %57, %56 ], [ %59, %58 ]
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %30, %22
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.nct7802_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SMARTFAN_EN(i32) #1

declare dso_local i32 @SMARTFAN_EN_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
