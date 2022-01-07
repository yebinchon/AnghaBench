; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1029.c_adm1029_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1029.c_adm1029_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adm1029_data = type { i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@adm1029_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adm1029_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1029_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.adm1029_data*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.adm1029_data* @devm_kzalloc(%struct.device* %11, i32 16, i32 %12)
  store %struct.adm1029_data* %13, %struct.adm1029_data** %7, align 8
  %14 = load %struct.adm1029_data*, %struct.adm1029_data** %7, align 8
  %15 = icmp ne %struct.adm1029_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.adm1029_data*, %struct.adm1029_data** %7, align 8
  %22 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %21, i32 0, i32 1
  store %struct.i2c_client* %20, %struct.i2c_client** %22, align 8
  %23 = load %struct.adm1029_data*, %struct.adm1029_data** %7, align 8
  %24 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = call i64 @adm1029_init_client(%struct.i2c_client* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %19
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.adm1029_data*, %struct.adm1029_data** %7, align 8
  %38 = load i32, i32* @adm1029_groups, align 4
  %39 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %33, i32 %36, %struct.adm1029_data* %37, i32 %38)
  store %struct.device* %39, %struct.device** %8, align 8
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %29, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.adm1029_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @adm1029_init_client(%struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.adm1029_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
