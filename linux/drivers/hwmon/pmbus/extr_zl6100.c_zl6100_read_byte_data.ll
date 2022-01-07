; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_read_byte_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_read_byte_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.zl6100_data = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@PMBUS_STATUS_MFR_SPECIFIC = common dso_local global i32 0, align 4
@VMON_UV_WARNING = common dso_local global i32 0, align 4
@PB_VOLTAGE_UV_WARNING = common dso_local global i32 0, align 4
@VMON_OV_WARNING = common dso_local global i32 0, align 4
@PB_VOLTAGE_OV_WARNING = common dso_local global i32 0, align 4
@VMON_UV_FAULT = common dso_local global i32 0, align 4
@PB_VOLTAGE_UV_FAULT = common dso_local global i32 0, align 4
@VMON_OV_FAULT = common dso_local global i32 0, align 4
@PB_VOLTAGE_OV_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @zl6100_read_byte_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl6100_read_byte_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmbus_driver_info*, align 8
  %9 = alloca %struct.zl6100_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %12)
  store %struct.pmbus_driver_info* %13, %struct.pmbus_driver_info** %8, align 8
  %14 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %15 = call %struct.zl6100_data* @to_zl6100_data(%struct.pmbus_driver_info* %14)
  store %struct.zl6100_data* %15, %struct.zl6100_data** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %3
  %22 = load %struct.zl6100_data*, %struct.zl6100_data** %9, align 8
  %23 = call i32 @zl6100_wait(%struct.zl6100_data* %22)
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %70 [
    i32 128, label %25
  ]

25:                                               ; preds = %21
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* @PMBUS_STATUS_MFR_SPECIFIC, align 4
  %28 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %26, i32 0, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %75

32:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @VMON_UV_WARNING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @PB_VOLTAGE_UV_WARNING, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @VMON_OV_WARNING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @PB_VOLTAGE_OV_WARNING, align 4
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @VMON_UV_FAULT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @PB_VOLTAGE_UV_FAULT, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @VMON_OV_FAULT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @PB_VOLTAGE_OV_FAULT, align 4
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %10, align 4
  br label %75

70:                                               ; preds = %21
  %71 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %71, i32 %72, i32 %73)
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %70, %68, %31
  %76 = call i32 (...) @ktime_get()
  %77 = load %struct.zl6100_data*, %struct.zl6100_data** %9, align 8
  %78 = getelementptr inbounds %struct.zl6100_data, %struct.zl6100_data* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.zl6100_data* @to_zl6100_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @zl6100_wait(%struct.zl6100_data*) #1

declare dso_local i32 @pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
