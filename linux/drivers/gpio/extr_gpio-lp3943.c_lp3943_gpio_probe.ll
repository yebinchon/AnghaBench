; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp3943.c_lp3943_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lp3943.c_lp3943_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.lp3943 = type { i32 }
%struct.lp3943_gpio = type { %struct.TYPE_5__, %struct.lp3943* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lp3943_gpio_chip = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp3943_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3943_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp3943*, align 8
  %5 = alloca %struct.lp3943_gpio*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.lp3943* @dev_get_drvdata(i32 %9)
  store %struct.lp3943* %10, %struct.lp3943** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.lp3943_gpio* @devm_kzalloc(%struct.TYPE_6__* %12, i32 16, i32 %13)
  store %struct.lp3943_gpio* %14, %struct.lp3943_gpio** %5, align 8
  %15 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %5, align 8
  %16 = icmp ne %struct.lp3943_gpio* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.lp3943*, %struct.lp3943** %4, align 8
  %22 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %5, align 8
  %23 = getelementptr inbounds %struct.lp3943_gpio, %struct.lp3943_gpio* %22, i32 0, i32 1
  store %struct.lp3943* %21, %struct.lp3943** %23, align 8
  %24 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %5, align 8
  %25 = getelementptr inbounds %struct.lp3943_gpio, %struct.lp3943_gpio* %24, i32 0, i32 0
  %26 = bitcast %struct.TYPE_5__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.TYPE_5__* @lp3943_gpio_chip to i8*), i64 8, i1 false)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %5, align 8
  %30 = getelementptr inbounds %struct.lp3943_gpio, %struct.lp3943_gpio* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %5, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.lp3943_gpio* %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %5, align 8
  %38 = getelementptr inbounds %struct.lp3943_gpio, %struct.lp3943_gpio* %37, i32 0, i32 0
  %39 = load %struct.lp3943_gpio*, %struct.lp3943_gpio** %5, align 8
  %40 = call i32 @devm_gpiochip_add_data(%struct.TYPE_6__* %36, %struct.TYPE_5__* %38, %struct.lp3943_gpio* %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %20, %17
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.lp3943* @dev_get_drvdata(i32) #1

declare dso_local %struct.lp3943_gpio* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lp3943_gpio*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_6__*, %struct.TYPE_5__*, %struct.lp3943_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
