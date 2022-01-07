; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iqs5xx_private = type { i64, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to request GPIO: %d\0A\00", align 1
@iqs5xx_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@iqs5xx_attr_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to add attributes: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to register device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @iqs5xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iqs5xx_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iqs5xx_private*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.iqs5xx_private* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.iqs5xx_private* %11, %struct.iqs5xx_private** %6, align 8
  %12 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %13 = icmp ne %struct.iqs5xx_private* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %111

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %20 = call i32 @i2c_set_clientdata(%struct.i2c_client* %18, %struct.iqs5xx_private* %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %23 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %22, i32 0, i32 3
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %27 = call i32 @devm_gpiod_get(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %29 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %31 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %17
  %36 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %37 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %111

45:                                               ; preds = %17
  %46 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %47 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %46, i32 0, i32 1
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = call i32 @iqs5xx_reset(%struct.i2c_client* %49)
  %51 = call i32 @usleep_range(i32 10000, i32 10100)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = call i32 @iqs5xx_dev_init(%struct.i2c_client* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %111

58:                                               ; preds = %45
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @iqs5xx_irq, align 4
  %65 = load i32, i32* @IRQF_ONESHOT, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %70 = call i32 @devm_request_threaded_irq(i32* %60, i32 %63, i32* null, i32 %64, i32 %65, i32 %68, %struct.iqs5xx_private* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %58
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %111

79:                                               ; preds = %58
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = call i32 @devm_device_add_group(i32* %81, i32* @iqs5xx_attr_group)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %111

91:                                               ; preds = %79
  %92 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %93 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %98 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @input_register_device(i64 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %103, %96
  br label %109

109:                                              ; preds = %108, %91
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %85, %73, %56, %35, %14
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.iqs5xx_private* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iqs5xx_private*) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iqs5xx_reset(%struct.i2c_client*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @iqs5xx_dev_init(%struct.i2c_client*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.iqs5xx_private*) #1

declare dso_local i32 @devm_device_add_group(i32*, i32*) #1

declare dso_local i32 @input_register_device(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
