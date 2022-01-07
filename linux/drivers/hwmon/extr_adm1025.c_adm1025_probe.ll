; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1025.c_adm1025_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1025.c_adm1025_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adm1025_data = type { i32**, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adm1025_group = common dso_local global i32 0, align 4
@ADM1025_REG_CONFIG = common dso_local global i32 0, align 4
@adm1025_group_in4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adm1025_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1025_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.adm1025_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.adm1025_data* @devm_kzalloc(%struct.device* %12, i32 24, i32 %13)
  store %struct.adm1025_data* %14, %struct.adm1025_data** %8, align 8
  %15 = load %struct.adm1025_data*, %struct.adm1025_data** %8, align 8
  %16 = icmp ne %struct.adm1025_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.adm1025_data*, %struct.adm1025_data** %8, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.adm1025_data* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.adm1025_data*, %struct.adm1025_data** %8, align 8
  %26 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %25, i32 0, i32 2
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.adm1025_data*, %struct.adm1025_data** %8, align 8
  %28 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @adm1025_init_client(%struct.i2c_client* %30)
  %32 = load %struct.adm1025_data*, %struct.adm1025_data** %8, align 8
  %33 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  store i32* @adm1025_group, i32** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load i32, i32* @ADM1025_REG_CONFIG, align 4
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %20
  %43 = load %struct.adm1025_data*, %struct.adm1025_data** %8, align 8
  %44 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  store i32* @adm1025_group_in4, i32** %46, align 8
  br label %47

47:                                               ; preds = %42, %20
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.adm1025_data*, %struct.adm1025_data** %8, align 8
  %53 = load %struct.adm1025_data*, %struct.adm1025_data** %8, align 8
  %54 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %48, i32 %51, %struct.adm1025_data* %52, i32** %55)
  store %struct.device* %56, %struct.device** %7, align 8
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %47, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.adm1025_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adm1025_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adm1025_init_client(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.adm1025_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
