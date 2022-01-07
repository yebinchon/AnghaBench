; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_asb100_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_asb100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.asb100_data = type { i32*, i32, i8**, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@asb100_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @asb100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asb100_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.asb100_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.asb100_data* @devm_kzalloc(%struct.TYPE_3__* %9, i32 32, i32 %10)
  store %struct.asb100_data* %11, %struct.asb100_data** %7, align 8
  %12 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %13 = icmp ne %struct.asb100_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %100

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %20 = call i32 @i2c_set_clientdata(%struct.i2c_client* %18, %struct.asb100_data* %19)
  %21 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %22 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %21, i32 0, i32 4
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %25 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %24, i32 0, i32 3
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call i32 @asb100_detect_subclients(%struct.i2c_client* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %100

33:                                               ; preds = %17
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = call i32 @asb100_init_client(%struct.i2c_client* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = call i32 @ASB100_REG_FAN_MIN(i32 0)
  %38 = call i8* @asb100_read_value(%struct.i2c_client* %36, i32 %37)
  %39 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %40 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %39, i32 0, i32 2
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %38, i8** %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = call i32 @ASB100_REG_FAN_MIN(i32 1)
  %45 = call i8* @asb100_read_value(%struct.i2c_client* %43, i32 %44)
  %46 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %47 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  store i8* %45, i8** %49, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = call i32 @ASB100_REG_FAN_MIN(i32 2)
  %52 = call i8* @asb100_read_value(%struct.i2c_client* %50, i32 %51)
  %53 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %54 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %53, i32 0, i32 2
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  store i8* %52, i8** %56, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @sysfs_create_group(i32* %59, i32* @asb100_group)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %33
  br label %86

64:                                               ; preds = %33
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = call i32 @hwmon_device_register(%struct.TYPE_3__* %66)
  %68 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %69 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %71 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %77 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %6, align 4
  br label %81

80:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %100

81:                                               ; preds = %75
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = call i32 @sysfs_remove_group(i32* %84, i32* @asb100_group)
  br label %86

86:                                               ; preds = %81, %63
  %87 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %88 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @i2c_unregister_device(i32 %91)
  %93 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %94 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @i2c_unregister_device(i32 %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %86, %80, %31, %14
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.asb100_data* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.asb100_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @asb100_detect_subclients(%struct.i2c_client*) #1

declare dso_local i32 @asb100_init_client(%struct.i2c_client*) #1

declare dso_local i8* @asb100_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @ASB100_REG_FAN_MIN(i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
