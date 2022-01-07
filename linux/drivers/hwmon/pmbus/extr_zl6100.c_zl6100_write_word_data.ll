; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_write_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_write_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.zl6100_data = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@MFR_VMON_OV_FAULT_LIMIT = common dso_local global i32 0, align 4
@MFR_VMON_UV_FAULT_LIMIT = common dso_local global i32 0, align 4
@PMBUS_VIRT_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @zl6100_write_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl6100_write_word_data(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pmbus_driver_info*, align 8
  %11 = alloca %struct.zl6100_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %14)
  store %struct.pmbus_driver_info* %15, %struct.pmbus_driver_info** %10, align 8
  %16 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %10, align 8
  %17 = call %struct.zl6100_data* @to_zl6100_data(%struct.pmbus_driver_info* %16)
  store %struct.zl6100_data* %17, %struct.zl6100_data** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %72

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %51 [
    i32 130, label %25
    i32 131, label %34
    i32 128, label %38
    i32 129, label %47
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @zl6100_l2d(i32 %26)
  %28 = mul nsw i32 %27, 10
  %29 = call i32 @DIV_ROUND_CLOSEST(i32 %28, i32 9)
  %30 = call i32 @zl6100_d2l(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @MFR_VMON_OV_FAULT_LIMIT, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %33 = call i32 @pmbus_clear_cache(%struct.i2c_client* %32)
  br label %60

34:                                               ; preds = %23
  %35 = load i32, i32* @MFR_VMON_OV_FAULT_LIMIT, align 4
  store i32 %35, i32* %13, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = call i32 @pmbus_clear_cache(%struct.i2c_client* %36)
  br label %60

38:                                               ; preds = %23
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @zl6100_l2d(i32 %39)
  %41 = mul nsw i32 %40, 10
  %42 = call i32 @DIV_ROUND_CLOSEST(i32 %41, i32 11)
  %43 = call i32 @zl6100_d2l(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @MFR_VMON_UV_FAULT_LIMIT, align 4
  store i32 %44, i32* %13, align 4
  %45 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %46 = call i32 @pmbus_clear_cache(%struct.i2c_client* %45)
  br label %60

47:                                               ; preds = %23
  %48 = load i32, i32* @MFR_VMON_UV_FAULT_LIMIT, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %50 = call i32 @pmbus_clear_cache(%struct.i2c_client* %49)
  br label %60

51:                                               ; preds = %23
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @PMBUS_VIRT_BASE, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @ENXIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %72

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %58, %47, %38, %34, %25
  %61 = load %struct.zl6100_data*, %struct.zl6100_data** %11, align 8
  %62 = call i32 @zl6100_wait(%struct.zl6100_data* %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @pmbus_write_word_data(%struct.i2c_client* %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = call i32 (...) @ktime_get()
  %69 = load %struct.zl6100_data*, %struct.zl6100_data** %11, align 8
  %70 = getelementptr inbounds %struct.zl6100_data, %struct.zl6100_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %60, %55, %20
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.zl6100_data* @to_zl6100_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @zl6100_d2l(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @zl6100_l2d(i32) #1

declare dso_local i32 @pmbus_clear_cache(%struct.i2c_client*) #1

declare dso_local i32 @zl6100_wait(%struct.zl6100_data*) #1

declare dso_local i32 @pmbus_write_word_data(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
