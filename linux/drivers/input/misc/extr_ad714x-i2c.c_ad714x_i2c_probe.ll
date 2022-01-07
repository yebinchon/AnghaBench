; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x-i2c.c_ad714x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x-i2c.c_ad714x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.ad714x_chip = type { i32 }

@BUS_I2C = common dso_local global i32 0, align 4
@ad714x_i2c_read = common dso_local global i32 0, align 4
@ad714x_i2c_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad714x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad714x_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ad714x_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1
  %9 = load i32, i32* @BUS_I2C, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ad714x_i2c_read, align 4
  %14 = load i32, i32* @ad714x_i2c_write, align 4
  %15 = call %struct.ad714x_chip* @ad714x_probe(i32* %8, i32 %9, i32 %12, i32 %13, i32 %14)
  store %struct.ad714x_chip* %15, %struct.ad714x_chip** %6, align 8
  %16 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %17 = call i64 @IS_ERR(%struct.ad714x_chip* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.ad714x_chip* %20)
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %25 = call i32 @i2c_set_clientdata(%struct.i2c_client* %23, %struct.ad714x_chip* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.ad714x_chip* @ad714x_probe(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ad714x_chip*) #1

declare dso_local i32 @PTR_ERR(%struct.ad714x_chip*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ad714x_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
