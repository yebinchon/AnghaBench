; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.zl6100_data = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @zl6100_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl6100_write_byte(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmbus_driver_info*, align 8
  %9 = alloca %struct.zl6100_data*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %11)
  store %struct.pmbus_driver_info* %12, %struct.pmbus_driver_info** %8, align 8
  %13 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %14 = call %struct.zl6100_data* @to_zl6100_data(%struct.pmbus_driver_info* %13)
  store %struct.zl6100_data* %14, %struct.zl6100_data** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load %struct.zl6100_data*, %struct.zl6100_data** %9, align 8
  %22 = call i32 @zl6100_wait(%struct.zl6100_data* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pmbus_write_byte(%struct.i2c_client* %23, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = call i32 (...) @ktime_get()
  %28 = load %struct.zl6100_data*, %struct.zl6100_data** %9, align 8
  %29 = getelementptr inbounds %struct.zl6100_data, %struct.zl6100_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %20, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.zl6100_data* @to_zl6100_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @zl6100_wait(%struct.zl6100_data*) #1

declare dso_local i32 @pmbus_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
