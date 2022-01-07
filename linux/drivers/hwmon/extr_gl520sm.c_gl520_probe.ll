; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_gl520_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_gl520_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.gl520_data = type { i32**, i64, %struct.i2c_client*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gl520_group = common dso_local global i32 0, align 4
@gl520_group_temp2 = common dso_local global i32 0, align 4
@gl520_group_in4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @gl520_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl520_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.gl520_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gl520_data* @devm_kzalloc(%struct.device* %11, i32 32, i32 %12)
  store %struct.gl520_data* %13, %struct.gl520_data** %8, align 8
  %14 = load %struct.gl520_data*, %struct.gl520_data** %8, align 8
  %15 = icmp ne %struct.gl520_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.gl520_data*, %struct.gl520_data** %8, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.gl520_data* %21)
  %23 = load %struct.gl520_data*, %struct.gl520_data** %8, align 8
  %24 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %23, i32 0, i32 3
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.gl520_data*, %struct.gl520_data** %8, align 8
  %28 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %27, i32 0, i32 2
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @gl520_init_client(%struct.i2c_client* %29)
  %31 = load %struct.gl520_data*, %struct.gl520_data** %8, align 8
  %32 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  store i32* @gl520_group, i32** %34, align 8
  %35 = load %struct.gl520_data*, %struct.gl520_data** %8, align 8
  %36 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %19
  %40 = load %struct.gl520_data*, %struct.gl520_data** %8, align 8
  %41 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  store i32* @gl520_group_temp2, i32** %43, align 8
  br label %49

44:                                               ; preds = %19
  %45 = load %struct.gl520_data*, %struct.gl520_data** %8, align 8
  %46 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  store i32* @gl520_group_in4, i32** %48, align 8
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.gl520_data*, %struct.gl520_data** %8, align 8
  %55 = load %struct.gl520_data*, %struct.gl520_data** %8, align 8
  %56 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %50, i32 %53, %struct.gl520_data* %54, i32** %57)
  store %struct.device* %58, %struct.device** %7, align 8
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %49, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.gl520_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.gl520_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gl520_init_client(%struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.gl520_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
