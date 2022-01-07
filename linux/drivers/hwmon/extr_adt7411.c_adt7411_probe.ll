; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adt7411_data = type { i32, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@adt7411_chip_info = common dso_local global i32 0, align 4
@adt7411_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adt7411_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7411_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.adt7411_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.adt7411_data* @devm_kzalloc(%struct.device* %12, i32 24, i32 %13)
  store %struct.adt7411_data* %14, %struct.adt7411_data** %7, align 8
  %15 = load %struct.adt7411_data*, %struct.adt7411_data** %7, align 8
  %16 = icmp ne %struct.adt7411_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.adt7411_data*, %struct.adt7411_data** %7, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.adt7411_data* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.adt7411_data*, %struct.adt7411_data** %7, align 8
  %26 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %25, i32 0, i32 3
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.adt7411_data*, %struct.adt7411_data** %7, align 8
  %28 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %27, i32 0, i32 2
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.adt7411_data*, %struct.adt7411_data** %7, align 8
  %31 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.adt7411_data*, %struct.adt7411_data** %7, align 8
  %34 = call i32 @adt7411_init_device(%struct.adt7411_data* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %52

39:                                               ; preds = %20
  %40 = load i32, i32* @jiffies, align 4
  %41 = load %struct.adt7411_data*, %struct.adt7411_data** %7, align 8
  %42 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.adt7411_data*, %struct.adt7411_data** %7, align 8
  %48 = load i32, i32* @adt7411_groups, align 4
  %49 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %43, i32 %46, %struct.adt7411_data* %47, i32* @adt7411_chip_info, i32 %48)
  store %struct.device* %49, %struct.device** %8, align 8
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %39, %37, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.adt7411_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adt7411_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adt7411_init_device(%struct.adt7411_data*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i32, %struct.adt7411_data*, i32*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
