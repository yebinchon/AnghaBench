; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6639.c_max6639_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6639.c_max6639_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max6639_data = type { i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max6639_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max6639_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6639_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.max6639_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.max6639_data* @devm_kzalloc(%struct.device* %12, i32 16, i32 %13)
  store %struct.max6639_data* %14, %struct.max6639_data** %7, align 8
  %15 = load %struct.max6639_data*, %struct.max6639_data** %7, align 8
  %16 = icmp ne %struct.max6639_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.max6639_data*, %struct.max6639_data** %7, align 8
  %23 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %22, i32 0, i32 1
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load %struct.max6639_data*, %struct.max6639_data** %7, align 8
  %25 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %24, i32 0, i32 0
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load %struct.max6639_data*, %struct.max6639_data** %7, align 8
  %29 = call i32 @max6639_init_client(%struct.i2c_client* %27, %struct.max6639_data* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %44

34:                                               ; preds = %20
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.max6639_data*, %struct.max6639_data** %7, align 8
  %40 = load i32, i32* @max6639_groups, align 4
  %41 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %35, i32 %38, %struct.max6639_data* %39, i32 %40)
  store %struct.device* %41, %struct.device** %8, align 8
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %34, %32, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.max6639_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @max6639_init_client(%struct.i2c_client*, %struct.max6639_data*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.max6639_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
