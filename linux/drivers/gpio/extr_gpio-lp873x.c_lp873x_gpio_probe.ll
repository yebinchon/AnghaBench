; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp873x.c_lp873x_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp873x.c_lp873x_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.lp873x_gpio = type { %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp873x_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp873x_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp873x_gpio*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.lp873x_gpio* @devm_kzalloc(%struct.TYPE_8__* %7, i32 16, i32 %8)
  store %struct.lp873x_gpio* %9, %struct.lp873x_gpio** %4, align 8
  %10 = load %struct.lp873x_gpio*, %struct.lp873x_gpio** %4, align 8
  %11 = icmp ne %struct.lp873x_gpio* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.lp873x_gpio*, %struct.lp873x_gpio** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.lp873x_gpio* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_9__* @dev_get_drvdata(i32 %22)
  %24 = load %struct.lp873x_gpio*, %struct.lp873x_gpio** %4, align 8
  %25 = getelementptr inbounds %struct.lp873x_gpio, %struct.lp873x_gpio* %24, i32 0, i32 1
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %25, align 8
  %26 = load %struct.lp873x_gpio*, %struct.lp873x_gpio** %4, align 8
  %27 = getelementptr inbounds %struct.lp873x_gpio, %struct.lp873x_gpio* %26, i32 0, i32 0
  %28 = bitcast %struct.TYPE_7__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 4 bitcast (%struct.TYPE_7__* @template_chip to i8*), i64 4, i1 false)
  %29 = load %struct.lp873x_gpio*, %struct.lp873x_gpio** %4, align 8
  %30 = getelementptr inbounds %struct.lp873x_gpio, %struct.lp873x_gpio* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lp873x_gpio*, %struct.lp873x_gpio** %4, align 8
  %35 = getelementptr inbounds %struct.lp873x_gpio, %struct.lp873x_gpio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.lp873x_gpio*, %struct.lp873x_gpio** %4, align 8
  %40 = getelementptr inbounds %struct.lp873x_gpio, %struct.lp873x_gpio* %39, i32 0, i32 0
  %41 = load %struct.lp873x_gpio*, %struct.lp873x_gpio** %4, align 8
  %42 = call i32 @devm_gpiochip_add_data(%struct.TYPE_8__* %38, %struct.TYPE_7__* %40, %struct.lp873x_gpio* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %15
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dev_err(%struct.TYPE_8__* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %45, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.lp873x_gpio* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lp873x_gpio*) #1

declare dso_local %struct.TYPE_9__* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.lp873x_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
