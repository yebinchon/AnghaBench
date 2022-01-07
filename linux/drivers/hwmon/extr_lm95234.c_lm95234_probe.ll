; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_lm95234_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_lm95234_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.lm95234_data = type { i32**, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm95234_common_group = common dso_local global i32 0, align 4
@lm95234 = common dso_local global i64 0, align 8
@lm95234_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm95234_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95234_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.lm95234_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.lm95234_data* @devm_kzalloc(%struct.device* %12, i32 24, i32 %13)
  store %struct.lm95234_data* %14, %struct.lm95234_data** %7, align 8
  %15 = load %struct.lm95234_data*, %struct.lm95234_data** %7, align 8
  %16 = icmp ne %struct.lm95234_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.lm95234_data*, %struct.lm95234_data** %7, align 8
  %23 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %22, i32 0, i32 2
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load %struct.lm95234_data*, %struct.lm95234_data** %7, align 8
  %25 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %24, i32 0, i32 1
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call i32 @lm95234_init_client(%struct.i2c_client* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %20
  %34 = load %struct.lm95234_data*, %struct.lm95234_data** %7, align 8
  %35 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  store i32* @lm95234_common_group, i32** %37, align 8
  %38 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @lm95234, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.lm95234_data*, %struct.lm95234_data** %7, align 8
  %45 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  store i32* @lm95234_group, i32** %47, align 8
  br label %48

48:                                               ; preds = %43, %33
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.lm95234_data*, %struct.lm95234_data** %7, align 8
  %54 = load %struct.lm95234_data*, %struct.lm95234_data** %7, align 8
  %55 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %49, i32 %52, %struct.lm95234_data* %53, i32** %56)
  store %struct.device* %57, %struct.device** %8, align 8
  %58 = load %struct.device*, %struct.device** %8, align 8
  %59 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %48, %31, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.lm95234_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lm95234_init_client(%struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.lm95234_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
