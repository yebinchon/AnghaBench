; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_read_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_read_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.zl6100_data = type { i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@zl2005 = common dso_local global i64 0, align 8
@MFR_READ_VMON = common dso_local global i32 0, align 4
@MFR_VMON_OV_FAULT_LIMIT = common dso_local global i32 0, align 4
@MFR_VMON_UV_FAULT_LIMIT = common dso_local global i32 0, align 4
@PMBUS_VIRT_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @zl6100_read_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl6100_read_word_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
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
  %23 = getelementptr inbounds %struct.zl6100_data, %struct.zl6100_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @zl2005, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %32 [
    i32 129, label %29
    i32 128, label %29
    i32 135, label %29
  ]

29:                                               ; preds = %27, %27, %27
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %80

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %41 [
    i32 134, label %35
    i32 132, label %37
    i32 133, label %37
    i32 130, label %39
    i32 131, label %39
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* @MFR_READ_VMON, align 4
  store i32 %36, i32* %11, align 4
  br label %50

37:                                               ; preds = %33, %33
  %38 = load i32, i32* @MFR_VMON_OV_FAULT_LIMIT, align 4
  store i32 %38, i32* %11, align 4
  br label %50

39:                                               ; preds = %33, %33
  %40 = load i32, i32* @MFR_VMON_UV_FAULT_LIMIT, align 4
  store i32 %40, i32* %11, align 4
  br label %50

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PMBUS_VIRT_BASE, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %80

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %39, %37, %35
  %51 = load %struct.zl6100_data*, %struct.zl6100_data** %9, align 8
  %52 = call i32 @zl6100_wait(%struct.zl6100_data* %51)
  %53 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @pmbus_read_word_data(%struct.i2c_client* %53, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = call i32 (...) @ktime_get()
  %58 = load %struct.zl6100_data*, %struct.zl6100_data** %9, align 8
  %59 = getelementptr inbounds %struct.zl6100_data, %struct.zl6100_data* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %80

64:                                               ; preds = %50
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %78 [
    i32 132, label %66
    i32 130, label %72
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @zl6100_l2d(i32 %67)
  %69 = mul nsw i32 %68, 9
  %70 = call i32 @DIV_ROUND_CLOSEST(i32 %69, i32 10)
  %71 = call i32 @zl6100_d2l(i32 %70)
  store i32 %71, i32* %10, align 4
  br label %78

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @zl6100_l2d(i32 %73)
  %75 = mul nsw i32 %74, 11
  %76 = call i32 @DIV_ROUND_CLOSEST(i32 %75, i32 10)
  %77 = call i32 @zl6100_d2l(i32 %76)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %64, %72, %66
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %62, %45, %29, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.zl6100_data* @to_zl6100_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @zl6100_wait(%struct.zl6100_data*) #1

declare dso_local i32 @pmbus_read_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @zl6100_d2l(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @zl6100_l2d(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
