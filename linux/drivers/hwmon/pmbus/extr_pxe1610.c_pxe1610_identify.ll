; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pxe1610.c_pxe1610_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pxe1610.c_pxe1610_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }

@PMBUS_VOUT_MODE = common dso_local global i32 0, align 4
@vr12 = common dso_local global i32 0, align 4
@vr13 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_driver_info*)* @pxe1610_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxe1610_identify(%struct.i2c_client* %0, %struct.pmbus_driver_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.pmbus_driver_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.pmbus_driver_info* %1, %struct.pmbus_driver_info** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = load i32, i32* @PMBUS_VOUT_MODE, align 4
  %10 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %8, i32 0, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = load i32, i32* @PMBUS_VOUT_MODE, align 4
  %15 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %13, i32 0, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %38

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @GENMASK(i32 4, i32 0)
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %33 [
    i32 1, label %25
    i32 2, label %29
  ]

25:                                               ; preds = %20
  %26 = load i32, i32* @vr12, align 4
  %27 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %5, align 8
  %28 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %36

29:                                               ; preds = %20
  %30 = load i32, i32* @vr13, align 4
  %31 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %5, align 8
  %32 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %36

33:                                               ; preds = %20
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %29, %25
  br label %37

37:                                               ; preds = %36, %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %33, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @pmbus_check_byte_register(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
