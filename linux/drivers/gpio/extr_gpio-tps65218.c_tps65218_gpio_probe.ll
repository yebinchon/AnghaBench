; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps65218.c_tps65218_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps65218.c_tps65218_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.tps65218 = type { i32 }
%struct.tps65218_gpio = type { %struct.TYPE_6__, %struct.tps65218* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"Failed to register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65218_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65218_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps65218*, align 8
  %5 = alloca %struct.tps65218_gpio*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.tps65218* @dev_get_drvdata(i32 %10)
  store %struct.tps65218* %11, %struct.tps65218** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tps65218_gpio* @devm_kzalloc(%struct.TYPE_7__* %13, i32 24, i32 %14)
  store %struct.tps65218_gpio* %15, %struct.tps65218_gpio** %5, align 8
  %16 = load %struct.tps65218_gpio*, %struct.tps65218_gpio** %5, align 8
  %17 = icmp ne %struct.tps65218_gpio* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %23 = load %struct.tps65218_gpio*, %struct.tps65218_gpio** %5, align 8
  %24 = getelementptr inbounds %struct.tps65218_gpio, %struct.tps65218_gpio* %23, i32 0, i32 1
  store %struct.tps65218* %22, %struct.tps65218** %24, align 8
  %25 = load %struct.tps65218_gpio*, %struct.tps65218_gpio** %5, align 8
  %26 = getelementptr inbounds %struct.tps65218_gpio, %struct.tps65218_gpio* %25, i32 0, i32 0
  %27 = bitcast %struct.TYPE_6__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.TYPE_6__* @template_chip to i8*), i64 16, i1 false)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.tps65218_gpio*, %struct.tps65218_gpio** %5, align 8
  %31 = getelementptr inbounds %struct.tps65218_gpio, %struct.tps65218_gpio* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.tps65218_gpio*, %struct.tps65218_gpio** %5, align 8
  %36 = getelementptr inbounds %struct.tps65218_gpio, %struct.tps65218_gpio* %35, i32 0, i32 0
  %37 = load %struct.tps65218_gpio*, %struct.tps65218_gpio** %5, align 8
  %38 = call i32 @devm_gpiochip_add_data(%struct.TYPE_7__* %34, %struct.TYPE_6__* %36, %struct.tps65218_gpio* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %21
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_err(%struct.TYPE_7__* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %21
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load %struct.tps65218_gpio*, %struct.tps65218_gpio** %5, align 8
  %50 = call i32 @platform_set_drvdata(%struct.platform_device* %48, %struct.tps65218_gpio* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %41, %18
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.tps65218* @dev_get_drvdata(i32) #1

declare dso_local %struct.tps65218_gpio* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.tps65218_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps65218_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
