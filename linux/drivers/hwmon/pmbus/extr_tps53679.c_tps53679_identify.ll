; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_tps53679.c_tps53679_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_tps53679.c_tps53679_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }

@PMBUS_VOUT_MODE = common dso_local global i32 0, align 4
@vr13 = common dso_local global i32 0, align 4
@vr12 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_driver_info*)* @tps53679_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps53679_identify(%struct.i2c_client* %0, %struct.pmbus_driver_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.pmbus_driver_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.pmbus_driver_info* %1, %struct.pmbus_driver_info** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = load i32, i32* @PMBUS_VOUT_MODE, align 4
  %10 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %8, i32 0, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %32

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @GENMASK(i32 4, i32 0)
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 130, label %20
    i32 128, label %24
    i32 131, label %24
    i32 132, label %24
  ]

20:                                               ; preds = %15, %15
  %21 = load i32, i32* @vr13, align 4
  %22 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %5, align 8
  %23 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %31

24:                                               ; preds = %15, %15, %15
  %25 = load i32, i32* @vr12, align 4
  %26 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %5, align 8
  %27 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %31

28:                                               ; preds = %15
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %24, %20
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
