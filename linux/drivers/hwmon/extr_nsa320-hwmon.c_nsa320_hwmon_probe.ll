; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nsa320-hwmon.c_nsa320_hwmon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nsa320-hwmon.c_nsa320_hwmon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.nsa320_hwmon = type { i32, i8*, i8*, i8* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"act\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"nsa320\00", align 1
@nsa320_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nsa320_hwmon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsa320_hwmon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.nsa320_hwmon*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nsa320_hwmon* @devm_kzalloc(i32* %7, i32 32, i32 %8)
  store %struct.nsa320_hwmon* %9, %struct.nsa320_hwmon** %4, align 8
  %10 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %4, align 8
  %11 = icmp ne %struct.nsa320_hwmon* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %77

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %19 = call i8* @devm_gpiod_get(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %4, align 8
  %21 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %4, align 8
  %23 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @IS_ERR(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %4, align 8
  %29 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %2, align 4
  br label %77

32:                                               ; preds = %15
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %36 = call i8* @devm_gpiod_get(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %4, align 8
  %38 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %4, align 8
  %40 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @IS_ERR(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %4, align 8
  %46 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %2, align 4
  br label %77

49:                                               ; preds = %32
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* @GPIOD_IN, align 4
  %53 = call i8* @devm_gpiod_get(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %4, align 8
  %55 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %4, align 8
  %57 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %49
  %62 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %4, align 8
  %63 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %2, align 4
  br label %77

66:                                               ; preds = %49
  %67 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %4, align 8
  %68 = getelementptr inbounds %struct.nsa320_hwmon, %struct.nsa320_hwmon* %67, i32 0, i32 0
  %69 = call i32 @mutex_init(i32* %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.nsa320_hwmon*, %struct.nsa320_hwmon** %4, align 8
  %73 = load i32, i32* @nsa320_groups, align 4
  %74 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.nsa320_hwmon* %72, i32 %73)
  store %struct.device* %74, %struct.device** %5, align 8
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %66, %61, %44, %27, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.nsa320_hwmon* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i8*, %struct.nsa320_hwmon*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
