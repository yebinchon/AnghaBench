; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-puv3.c_puv3_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-puv3.c_puv3_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.i2c_adapter = type { i32, %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"puv3_i2c\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"can't allocate interface!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"PUV3-I2C at 0x%08x\00", align 1
@puv3_i2c_algorithm = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"PKUnity v3 i2c bus adapter.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @puv3_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 %8, i32 0)
  store %struct.resource* %9, %struct.resource** %5, align 8
  %10 = load %struct.resource*, %struct.resource** %5, align 8
  %11 = icmp ne %struct.resource* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.resource*, %struct.resource** %5, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = call i32 @resource_size(%struct.resource* %19)
  %21 = call i32 @request_mem_region(i32 %18, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %83

26:                                               ; preds = %15
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.i2c_adapter* @kzalloc(i32 40, i32 %27)
  store %struct.i2c_adapter* %28, %struct.i2c_adapter** %4, align 8
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %30 = icmp eq %struct.i2c_adapter* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %75

37:                                               ; preds = %26
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snprintf(i32 %40, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %45, i32 0, i32 3
  store i32* @puv3_i2c_algorithm, i32** %46, align 8
  %47 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32* %51, i32** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %57 = call i32 @platform_set_drvdata(%struct.platform_device* %55, %struct.i2c_adapter* %56)
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %64 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %37
  br label %72

68:                                               ; preds = %37
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_info(i32* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %83

72:                                               ; preds = %67
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %74 = call i32 @kfree(%struct.i2c_adapter* %73)
  br label %75

75:                                               ; preds = %72, %31
  %76 = load %struct.resource*, %struct.resource** %5, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.resource*, %struct.resource** %5, align 8
  %80 = call i32 @resource_size(%struct.resource* %79)
  %81 = call i32 @release_mem_region(i32 %78, i32 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %75, %68, %23, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.i2c_adapter* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_adapter*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.i2c_adapter*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
