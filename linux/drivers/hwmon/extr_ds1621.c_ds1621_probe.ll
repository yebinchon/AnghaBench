; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds1621.c_ds1621_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds1621.c_ds1621_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.ds1621_data = type { %struct.i2c_client*, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ds1621_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ds1621_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1621_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ds1621_data*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ds1621_data* @devm_kzalloc(i32* %9, i32 16, i32 %10)
  store %struct.ds1621_data* %11, %struct.ds1621_data** %6, align 8
  %12 = load %struct.ds1621_data*, %struct.ds1621_data** %6, align 8
  %13 = icmp ne %struct.ds1621_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.ds1621_data*, %struct.ds1621_data** %6, align 8
  %19 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %18, i32 0, i32 2
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ds1621_data*, %struct.ds1621_data** %6, align 8
  %25 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.ds1621_data*, %struct.ds1621_data** %6, align 8
  %28 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %27, i32 0, i32 0
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.ds1621_data*, %struct.ds1621_data** %6, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @ds1621_init_client(%struct.ds1621_data* %29, %struct.i2c_client* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 1
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ds1621_data*, %struct.ds1621_data** %6, align 8
  %38 = load i32, i32* @ds1621_groups, align 4
  %39 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %33, i32 %36, %struct.ds1621_data* %37, i32 %38)
  store %struct.device* %39, %struct.device** %7, align 8
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %17, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.ds1621_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ds1621_init_client(%struct.ds1621_data*, %struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i32, %struct.ds1621_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
