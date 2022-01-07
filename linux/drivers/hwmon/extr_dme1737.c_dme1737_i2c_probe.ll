; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.dme1737_data = type { i32, i32, i32, %struct.i2c_client*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to initialize device.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to create sysfs files.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to register device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @dme1737_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme1737_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.dme1737_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.dme1737_data* @devm_kzalloc(%struct.device* %11, i32 32, i32 %12)
  store %struct.dme1737_data* %13, %struct.dme1737_data** %6, align 8
  %14 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %15 = icmp ne %struct.dme1737_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %78

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.dme1737_data* %21)
  %23 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %27 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %30 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %29, i32 0, i32 3
  store %struct.i2c_client* %28, %struct.i2c_client** %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %35 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %37 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = call i32 @dme1737_init_device(%struct.device* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %19
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %78

47:                                               ; preds = %19
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = call i32 @dme1737_create_files(%struct.device* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %47
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = call i32 @hwmon_device_register(%struct.device* %57)
  %59 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %60 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %62 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load %struct.device*, %struct.device** %7, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.dme1737_data*, %struct.dme1737_data** %6, align 8
  %70 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %8, align 4
  br label %74

73:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %78

74:                                               ; preds = %66
  %75 = load %struct.device*, %struct.device** %7, align 8
  %76 = call i32 @dme1737_remove_files(%struct.device* %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %73, %52, %43, %16
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.dme1737_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.dme1737_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dme1737_init_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dme1737_create_files(%struct.device*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dme1737_remove_files(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
