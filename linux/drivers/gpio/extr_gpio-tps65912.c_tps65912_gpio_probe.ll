; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps65912.c_tps65912_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps65912.c_tps65912_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tps65912 = type { i32 }
%struct.tps65912_gpio = type { %struct.TYPE_6__, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65912_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65912_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps65912*, align 8
  %5 = alloca %struct.tps65912_gpio*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @dev_get_drvdata(i32 %10)
  %12 = bitcast i8* %11 to %struct.tps65912*
  store %struct.tps65912* %12, %struct.tps65912** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.tps65912_gpio* @devm_kzalloc(%struct.TYPE_7__* %14, i32 16, i32 %15)
  store %struct.tps65912_gpio* %16, %struct.tps65912_gpio** %5, align 8
  %17 = load %struct.tps65912_gpio*, %struct.tps65912_gpio** %5, align 8
  %18 = icmp ne %struct.tps65912_gpio* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %57

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @dev_get_drvdata(i32 %26)
  %28 = load %struct.tps65912_gpio*, %struct.tps65912_gpio** %5, align 8
  %29 = getelementptr inbounds %struct.tps65912_gpio, %struct.tps65912_gpio* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.tps65912_gpio*, %struct.tps65912_gpio** %5, align 8
  %31 = getelementptr inbounds %struct.tps65912_gpio, %struct.tps65912_gpio* %30, i32 0, i32 0
  %32 = bitcast %struct.TYPE_6__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 bitcast (%struct.TYPE_6__* @template_chip to i8*), i64 4, i1 false)
  %33 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %34 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tps65912_gpio*, %struct.tps65912_gpio** %5, align 8
  %37 = getelementptr inbounds %struct.tps65912_gpio, %struct.tps65912_gpio* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.tps65912_gpio*, %struct.tps65912_gpio** %5, align 8
  %42 = getelementptr inbounds %struct.tps65912_gpio, %struct.tps65912_gpio* %41, i32 0, i32 0
  %43 = load %struct.tps65912_gpio*, %struct.tps65912_gpio** %5, align 8
  %44 = call i32 @devm_gpiochip_add_data(%struct.TYPE_7__* %40, %struct.TYPE_6__* %42, %struct.tps65912_gpio* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %22
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(%struct.TYPE_7__* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %22
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.tps65912_gpio*, %struct.tps65912_gpio** %5, align 8
  %56 = call i32 @platform_set_drvdata(%struct.platform_device* %54, %struct.tps65912_gpio* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %47, %19
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i8* @dev_get_drvdata(i32) #1

declare dso_local %struct.tps65912_gpio* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.tps65912_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps65912_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
