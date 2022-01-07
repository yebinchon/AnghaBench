; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9055.c_da9055_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9055.c_da9055_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.da9055_gpio = type { %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.da9055_pdata = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reference_gp = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9055_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9055_gpio*, align 8
  %5 = alloca %struct.da9055_pdata*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.da9055_gpio* @devm_kzalloc(%struct.TYPE_8__* %8, i32 16, i32 %9)
  store %struct.da9055_gpio* %10, %struct.da9055_gpio** %4, align 8
  %11 = load %struct.da9055_gpio*, %struct.da9055_gpio** %4, align 8
  %12 = icmp ne %struct.da9055_gpio* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_9__* @dev_get_drvdata(i32 %20)
  %22 = load %struct.da9055_gpio*, %struct.da9055_gpio** %4, align 8
  %23 = getelementptr inbounds %struct.da9055_gpio, %struct.da9055_gpio* %22, i32 0, i32 1
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %23, align 8
  %24 = load %struct.da9055_gpio*, %struct.da9055_gpio** %4, align 8
  %25 = getelementptr inbounds %struct.da9055_gpio, %struct.da9055_gpio* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.da9055_pdata* @dev_get_platdata(i32 %28)
  store %struct.da9055_pdata* %29, %struct.da9055_pdata** %5, align 8
  %30 = load %struct.da9055_gpio*, %struct.da9055_gpio** %4, align 8
  %31 = getelementptr inbounds %struct.da9055_gpio, %struct.da9055_gpio* %30, i32 0, i32 0
  %32 = bitcast %struct.TYPE_7__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.TYPE_7__* @reference_gp to i8*), i64 8, i1 false)
  %33 = load %struct.da9055_pdata*, %struct.da9055_pdata** %5, align 8
  %34 = icmp ne %struct.da9055_pdata* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %16
  %36 = load %struct.da9055_pdata*, %struct.da9055_pdata** %5, align 8
  %37 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.da9055_pdata*, %struct.da9055_pdata** %5, align 8
  %42 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.da9055_gpio*, %struct.da9055_gpio** %4, align 8
  %45 = getelementptr inbounds %struct.da9055_gpio, %struct.da9055_gpio* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %35, %16
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.da9055_gpio*, %struct.da9055_gpio** %4, align 8
  %51 = getelementptr inbounds %struct.da9055_gpio, %struct.da9055_gpio* %50, i32 0, i32 0
  %52 = load %struct.da9055_gpio*, %struct.da9055_gpio** %4, align 8
  %53 = call i32 @devm_gpiochip_add_data(%struct.TYPE_8__* %49, %struct.TYPE_7__* %51, %struct.da9055_gpio* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @dev_err(%struct.TYPE_8__* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %66

62:                                               ; preds = %47
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load %struct.da9055_gpio*, %struct.da9055_gpio** %4, align 8
  %65 = call i32 @platform_set_drvdata(%struct.platform_device* %63, %struct.da9055_gpio* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %56, %13
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.da9055_gpio* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @dev_get_drvdata(i32) #1

declare dso_local %struct.da9055_pdata* @dev_get_platdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.da9055_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9055_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
