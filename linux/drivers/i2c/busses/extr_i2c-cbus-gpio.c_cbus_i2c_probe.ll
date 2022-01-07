; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cbus-gpio.c_cbus_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cbus-gpio.c_cbus_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_adapter = type { i32, i32*, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.cbus_host = type { %struct.TYPE_6__*, i32, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"CBUS clk\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"CBUS dat\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CBUS sel\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@cbus_i2c_algo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"CBUS I2C adapter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cbus_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbus_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.cbus_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @devm_kzalloc(%struct.TYPE_6__* %7, i32 48, i32 %8)
  %10 = bitcast i8* %9 to %struct.i2c_adapter*
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %4, align 8
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = icmp ne %struct.i2c_adapter* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %146

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @devm_kzalloc(%struct.TYPE_6__* %18, i32 40, i32 %19)
  %21 = bitcast i8* %20 to %struct.cbus_host*
  store %struct.cbus_host* %21, %struct.cbus_host** %5, align 8
  %22 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %23 = icmp ne %struct.cbus_host* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %146

27:                                               ; preds = %16
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @gpiod_count(%struct.TYPE_6__* %29, i32* null)
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %146

35:                                               ; preds = %27
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %39 = call i8* @devm_gpiod_get_index(%struct.TYPE_6__* %37, i32* null, i32 0, i32 %38)
  %40 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %41 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %43 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %42, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %49 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %2, align 4
  br label %146

52:                                               ; preds = %35
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* @GPIOD_IN, align 4
  %56 = call i8* @devm_gpiod_get_index(%struct.TYPE_6__* %54, i32* null, i32 1, i32 %55)
  %57 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %58 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %60 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %66 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  store i32 %68, i32* %2, align 4
  br label %146

69:                                               ; preds = %52
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %73 = call i8* @devm_gpiod_get_index(%struct.TYPE_6__* %71, i32* null, i32 2, i32 %72)
  %74 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %75 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %77 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @IS_ERR(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %69
  %82 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %83 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @PTR_ERR(i8* %84)
  store i32 %85, i32* %2, align 4
  br label %146

86:                                               ; preds = %69
  %87 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %88 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @gpiod_set_consumer_name(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %92 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @gpiod_set_consumer_name(i8* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %96 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @gpiod_set_consumer_name(i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @THIS_MODULE, align 4
  %100 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %103 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %109, align 8
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %115 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @HZ, align 4
  %123 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %125, i32 0, i32 1
  store i32* @cbus_i2c_algo, i32** %126, align 8
  %127 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @strlcpy(i32 %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %131 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %132 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %131, i32 0, i32 1
  %133 = call i32 @spin_lock_init(i32* %132)
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %137 = getelementptr inbounds %struct.cbus_host, %struct.cbus_host* %136, i32 0, i32 0
  store %struct.TYPE_6__* %135, %struct.TYPE_6__** %137, align 8
  %138 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %139 = load %struct.cbus_host*, %struct.cbus_host** %5, align 8
  %140 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %138, %struct.cbus_host* %139)
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %143 = call i32 @platform_set_drvdata(%struct.platform_device* %141, %struct.i2c_adapter* %142)
  %144 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %145 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %144)
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %86, %81, %64, %47, %32, %24, %13
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @gpiod_count(%struct.TYPE_6__*, i32*) #1

declare dso_local i8* @devm_gpiod_get_index(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @gpiod_set_consumer_name(i8*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.cbus_host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_adapter*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
