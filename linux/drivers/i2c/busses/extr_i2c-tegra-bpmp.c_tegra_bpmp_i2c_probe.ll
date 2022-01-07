; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra-bpmp.c_tegra_bpmp_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra-bpmp.c_tegra_bpmp_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.tegra_bpmp_i2c = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"nvidia,bpmp-bus-id\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Tegra BPMP I2C adapter\00", align 1
@tegra_bpmp_i2c_algo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_bpmp_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_bpmp_i2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tegra_bpmp_i2c* @devm_kzalloc(%struct.TYPE_7__* %8, i32 48, i32 %9)
  store %struct.tegra_bpmp_i2c* %10, %struct.tegra_bpmp_i2c** %4, align 8
  %11 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %12 = icmp ne %struct.tegra_bpmp_i2c* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %85

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %19, i32 0, i32 3
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_get_drvdata(i32 %24)
  %26 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %16
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %85

35:                                               ; preds = %16
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @of_property_read_u32(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %85

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %48 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %49, i32 0, i32 0
  %51 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %52 = call i32 @i2c_set_adapdata(%struct.TYPE_6__* %50, %struct.tegra_bpmp_i2c* %51)
  %53 = load i32, i32* @THIS_MODULE, align 4
  %54 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %55 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %58 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @strlcpy(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %62 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %63 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32* @tegra_bpmp_i2c_algo, i32** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %68 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %70, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %76 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %81 = call i32 @platform_set_drvdata(%struct.platform_device* %79, %struct.tegra_bpmp_i2c* %80)
  %82 = load %struct.tegra_bpmp_i2c*, %struct.tegra_bpmp_i2c** %4, align 8
  %83 = getelementptr inbounds %struct.tegra_bpmp_i2c, %struct.tegra_bpmp_i2c* %82, i32 0, i32 0
  %84 = call i32 @i2c_add_adapter(%struct.TYPE_6__* %83)
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %45, %43, %32, %13
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.tegra_bpmp_i2c* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_6__*, %struct.tegra_bpmp_i2c*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_bpmp_i2c*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
