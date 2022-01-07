; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_adm1031_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_adm1031_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.adm1031_data = type { i64, i32**, i32*, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adm1030 = common dso_local global i64 0, align 8
@auto_channel_select_table_adm1030 = common dso_local global i32 0, align 4
@auto_channel_select_table_adm1031 = common dso_local global i32 0, align 4
@adm1031_group = common dso_local global i32 0, align 4
@adm1031 = common dso_local global i64 0, align 8
@adm1031_group_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adm1031_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1031_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.adm1031_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.adm1031_data* @devm_kzalloc(%struct.device* %11, i32 40, i32 %12)
  store %struct.adm1031_data* %13, %struct.adm1031_data** %8, align 8
  %14 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %15 = icmp ne %struct.adm1031_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.adm1031_data* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %25 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %24, i32 0, i32 4
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %30 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %32 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %31, i32 0, i32 3
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %35 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @adm1030, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %19
  %40 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %41 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %40, i32 0, i32 2
  store i32* @auto_channel_select_table_adm1030, i32** %41, align 8
  br label %45

42:                                               ; preds = %19
  %43 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %44 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %43, i32 0, i32 2
  store i32* @auto_channel_select_table_adm1031, i32** %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = call i32 @adm1031_init_client(%struct.i2c_client* %46)
  %48 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %49 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  store i32* @adm1031_group, i32** %51, align 8
  %52 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %53 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @adm1031, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %59 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %58, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  store i32* @adm1031_group_opt, i32** %61, align 8
  br label %62

62:                                               ; preds = %57, %45
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %68 = load %struct.adm1031_data*, %struct.adm1031_data** %8, align 8
  %69 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %63, i32 %66, %struct.adm1031_data* %67, i32** %70)
  store %struct.device* %71, %struct.device** %7, align 8
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %62, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.adm1031_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adm1031_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adm1031_init_client(%struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.adm1031_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
