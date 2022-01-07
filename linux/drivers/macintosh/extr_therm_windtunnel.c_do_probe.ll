; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_therm_windtunnel.c_do_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_therm_windtunnel.c_do_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @do_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  store %struct.i2c_adapter* %9, %struct.i2c_adapter** %6, align 8
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %11 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %27 [
    i32 129, label %21
    i32 128, label %24
  ]

21:                                               ; preds = %17
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @attach_fan(%struct.i2c_client* %22)
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %17
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = call i32 @attach_thermostat(%struct.i2c_client* %25)
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24, %21, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @attach_fan(%struct.i2c_client*) #1

declare dso_local i32 @attach_thermostat(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
