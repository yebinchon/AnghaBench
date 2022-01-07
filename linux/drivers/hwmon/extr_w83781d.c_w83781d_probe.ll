; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_w83781d_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_w83781d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.w83781d_data = type { i32*, i32, i32, %struct.i2c_client*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @w83781d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.w83781d_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.w83781d_data* @devm_kzalloc(%struct.device* %11, i32 32, i32 %12)
  store %struct.w83781d_data* %13, %struct.w83781d_data** %7, align 8
  %14 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %15 = icmp ne %struct.w83781d_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %86

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.w83781d_data* %21)
  %23 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %24 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %23, i32 0, i32 5
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %27 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %26, i32 0, i32 4
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %33 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %36 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %35, i32 0, i32 3
  store %struct.i2c_client* %34, %struct.i2c_client** %36, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = call i32 @w83781d_detect_subclients(%struct.i2c_client* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %19
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %86

43:                                               ; preds = %19
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @w83781d_init_device(%struct.device* %44)
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %48 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @w83781d_create_files(%struct.device* %46, i32 %49, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %70

54:                                               ; preds = %43
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i32 @hwmon_device_register(%struct.device* %55)
  %57 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %58 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %60 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %66 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %8, align 4
  br label %70

69:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %86

70:                                               ; preds = %64, %53
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 @w83781d_remove_files(%struct.device* %71)
  %73 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %74 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @i2c_unregister_device(i32 %77)
  %79 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %80 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @i2c_unregister_device(i32 %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %70, %69, %41, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.w83781d_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.w83781d_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @w83781d_detect_subclients(%struct.i2c_client*) #1

declare dso_local i32 @w83781d_init_device(%struct.device*) #1

declare dso_local i32 @w83781d_create_files(%struct.device*, i32, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @w83781d_remove_files(%struct.device*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
