; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pcf8591.c_pcf8591_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pcf8591.c_pcf8591_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.pcf8591_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcf8591_attr_group = common dso_local global i32 0, align 4
@input_mode = common dso_local global i32 0, align 4
@dev_attr_in2_input = common dso_local global i32 0, align 4
@dev_attr_in3_input = common dso_local global i32 0, align 4
@pcf8591_attr_group_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pcf8591_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8591_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pcf8591_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.pcf8591_data* @devm_kzalloc(%struct.TYPE_4__* %9, i32 8, i32 %10)
  store %struct.pcf8591_data* %11, %struct.pcf8591_data** %6, align 8
  %12 = load %struct.pcf8591_data*, %struct.pcf8591_data** %6, align 8
  %13 = icmp ne %struct.pcf8591_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %83

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.pcf8591_data*, %struct.pcf8591_data** %6, align 8
  %20 = call i32 @i2c_set_clientdata(%struct.i2c_client* %18, %struct.pcf8591_data* %19)
  %21 = load %struct.pcf8591_data*, %struct.pcf8591_data** %6, align 8
  %22 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %21, i32 0, i32 1
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @pcf8591_init_client(%struct.i2c_client* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @sysfs_create_group(i32* %28, i32* @pcf8591_attr_group)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %83

34:                                               ; preds = %17
  %35 = load i32, i32* @input_mode, align 4
  %36 = icmp ne i32 %35, 3
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 @device_create_file(%struct.TYPE_4__* %39, i32* @dev_attr_in2_input)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %73

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* @input_mode, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @device_create_file(%struct.TYPE_4__* %50, i32* @dev_attr_in3_input)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %73

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %45
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32 @hwmon_device_register(%struct.TYPE_4__* %58)
  %60 = load %struct.pcf8591_data*, %struct.pcf8591_data** %6, align 8
  %61 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.pcf8591_data*, %struct.pcf8591_data** %6, align 8
  %63 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @IS_ERR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load %struct.pcf8591_data*, %struct.pcf8591_data** %6, align 8
  %69 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %7, align 4
  br label %73

72:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %83

73:                                               ; preds = %67, %54, %43
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @sysfs_remove_group(i32* %76, i32* @pcf8591_attr_group_opt)
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @sysfs_remove_group(i32* %80, i32* @pcf8591_attr_group)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %73, %72, %32, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.pcf8591_data* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pcf8591_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pcf8591_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
