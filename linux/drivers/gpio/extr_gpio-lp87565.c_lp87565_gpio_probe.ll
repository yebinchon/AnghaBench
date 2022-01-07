; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp87565.c_lp87565_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp87565.c_lp87565_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.lp87565_gpio = type { %struct.TYPE_6__, i32 }
%struct.lp87565 = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp87565_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp87565_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp87565_gpio*, align 8
  %5 = alloca %struct.lp87565*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.lp87565_gpio* @devm_kzalloc(%struct.TYPE_7__* %8, i32 8, i32 %9)
  store %struct.lp87565_gpio* %10, %struct.lp87565_gpio** %4, align 8
  %11 = load %struct.lp87565_gpio*, %struct.lp87565_gpio** %4, align 8
  %12 = icmp ne %struct.lp87565_gpio* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.lp87565* @dev_get_drvdata(i32 %20)
  store %struct.lp87565* %21, %struct.lp87565** %5, align 8
  %22 = load %struct.lp87565_gpio*, %struct.lp87565_gpio** %4, align 8
  %23 = getelementptr inbounds %struct.lp87565_gpio, %struct.lp87565_gpio* %22, i32 0, i32 0
  %24 = bitcast %struct.TYPE_6__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.TYPE_6__* @template_chip to i8*), i64 4, i1 false)
  %25 = load %struct.lp87565*, %struct.lp87565** %5, align 8
  %26 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lp87565_gpio*, %struct.lp87565_gpio** %4, align 8
  %29 = getelementptr inbounds %struct.lp87565_gpio, %struct.lp87565_gpio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.lp87565*, %struct.lp87565** %5, align 8
  %32 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lp87565_gpio*, %struct.lp87565_gpio** %4, align 8
  %35 = getelementptr inbounds %struct.lp87565_gpio, %struct.lp87565_gpio* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.lp87565_gpio*, %struct.lp87565_gpio** %4, align 8
  %39 = getelementptr inbounds %struct.lp87565_gpio, %struct.lp87565_gpio* %38, i32 0, i32 0
  %40 = load %struct.lp87565_gpio*, %struct.lp87565_gpio** %4, align 8
  %41 = call i32 @devm_gpiochip_add_data(%struct.TYPE_7__* %37, %struct.TYPE_6__* %39, %struct.lp87565_gpio* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %16
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(%struct.TYPE_7__* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %44, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.lp87565_gpio* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.lp87565* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.lp87565_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
