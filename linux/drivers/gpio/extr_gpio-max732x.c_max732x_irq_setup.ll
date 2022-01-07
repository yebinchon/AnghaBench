; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_max732x_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_max732x_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max732x_chip = type { %struct.i2c_client* }
%struct.i2c_client = type { i32, i64 }
%struct.i2c_device_id = type { i64 }
%struct.max732x_platform_data = type { i64 }

@max732x_features = common dso_local global i32* null, align 8
@INT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"interrupt support not compiled in\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max732x_chip*, %struct.i2c_device_id*)* @max732x_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max732x_irq_setup(%struct.max732x_chip* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca %struct.max732x_chip*, align 8
  %4 = alloca %struct.i2c_device_id*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.max732x_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.max732x_chip* %0, %struct.max732x_chip** %3, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %4, align 8
  %8 = load %struct.max732x_chip*, %struct.max732x_chip** %3, align 8
  %9 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %8, i32 0, i32 0
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.max732x_platform_data* @dev_get_platdata(i32* %12)
  store %struct.max732x_platform_data* %13, %struct.max732x_platform_data** %6, align 8
  %14 = load i32*, i32** @max732x_features, align 8
  %15 = load %struct.i2c_device_id*, %struct.i2c_device_id** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %6, align 8
  %22 = icmp ne %struct.max732x_platform_data* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %6, align 8
  %25 = getelementptr inbounds %struct.max732x_platform_data, %struct.max732x_platform_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @INT_NONE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %33, %28
  ret i32 0
}

declare dso_local %struct.max732x_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
