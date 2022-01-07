; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_thmc50.c_thmc50_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_thmc50.c_thmc50_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.thmc50_data = type { i32**, i64, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@thmc50_group = common dso_local global i32 0, align 4
@temp3_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @thmc50_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thmc50_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.thmc50_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.thmc50_data* @devm_kzalloc(%struct.device* %12, i32 32, i32 %13)
  store %struct.thmc50_data* %14, %struct.thmc50_data** %7, align 8
  %15 = load %struct.thmc50_data*, %struct.thmc50_data** %7, align 8
  %16 = icmp ne %struct.thmc50_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %65

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.thmc50_data*, %struct.thmc50_data** %7, align 8
  %23 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %22, i32 0, i32 4
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.thmc50_data*, %struct.thmc50_data** %7, align 8
  %28 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.thmc50_data*, %struct.thmc50_data** %7, align 8
  %30 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %29, i32 0, i32 2
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.thmc50_data*, %struct.thmc50_data** %7, align 8
  %33 = call i32 @thmc50_init_client(%struct.thmc50_data* %32)
  %34 = load %struct.thmc50_data*, %struct.thmc50_data** %7, align 8
  %35 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32*, i32** %36, i64 %39
  store i32* @thmc50_group, i32** %40, align 8
  %41 = load %struct.thmc50_data*, %struct.thmc50_data** %7, align 8
  %42 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %20
  %46 = load %struct.thmc50_data*, %struct.thmc50_data** %7, align 8
  %47 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  store i32* @temp3_group, i32** %52, align 8
  br label %53

53:                                               ; preds = %45, %20
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.thmc50_data*, %struct.thmc50_data** %7, align 8
  %59 = load %struct.thmc50_data*, %struct.thmc50_data** %7, align 8
  %60 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %54, i32 %57, %struct.thmc50_data* %58, i32** %61)
  store %struct.device* %62, %struct.device** %8, align 8
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %53, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.thmc50_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @thmc50_init_client(%struct.thmc50_data*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.thmc50_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
