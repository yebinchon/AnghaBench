; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8350.c_wm8350_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm8350.c_wm8350_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.wm8350 = type { i32 }
%struct.wm8350_platform_data = type { i32 }
%struct.wm8350_gpio_data = type { %struct.TYPE_6__, %struct.wm8350* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8350_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca %struct.wm8350_platform_data*, align 8
  %6 = alloca %struct.wm8350_gpio_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.wm8350* @dev_get_drvdata(i32 %11)
  store %struct.wm8350* %12, %struct.wm8350** %4, align 8
  %13 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %14 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.wm8350_platform_data* @dev_get_platdata(i32 %15)
  store %struct.wm8350_platform_data* %16, %struct.wm8350_platform_data** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.wm8350_gpio_data* @devm_kzalloc(%struct.TYPE_7__* %18, i32 24, i32 %19)
  store %struct.wm8350_gpio_data* %20, %struct.wm8350_gpio_data** %6, align 8
  %21 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %6, align 8
  %22 = icmp eq %struct.wm8350_gpio_data* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %79

26:                                               ; preds = %1
  %27 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %28 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %6, align 8
  %29 = getelementptr inbounds %struct.wm8350_gpio_data, %struct.wm8350_gpio_data* %28, i32 0, i32 1
  store %struct.wm8350* %27, %struct.wm8350** %29, align 8
  %30 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %6, align 8
  %31 = getelementptr inbounds %struct.wm8350_gpio_data, %struct.wm8350_gpio_data* %30, i32 0, i32 0
  %32 = bitcast %struct.TYPE_6__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.TYPE_6__* @template_chip to i8*), i64 16, i1 false)
  %33 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %6, align 8
  %34 = getelementptr inbounds %struct.wm8350_gpio_data, %struct.wm8350_gpio_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 13, i32* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %6, align 8
  %39 = getelementptr inbounds %struct.wm8350_gpio_data, %struct.wm8350_gpio_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %40, align 8
  %41 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %5, align 8
  %42 = icmp ne %struct.wm8350_platform_data* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %26
  %44 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %5, align 8
  %45 = getelementptr inbounds %struct.wm8350_platform_data, %struct.wm8350_platform_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %5, align 8
  %50 = getelementptr inbounds %struct.wm8350_platform_data, %struct.wm8350_platform_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %6, align 8
  %53 = getelementptr inbounds %struct.wm8350_gpio_data, %struct.wm8350_gpio_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  br label %59

55:                                               ; preds = %43, %26
  %56 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %6, align 8
  %57 = getelementptr inbounds %struct.wm8350_gpio_data, %struct.wm8350_gpio_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %6, align 8
  %63 = getelementptr inbounds %struct.wm8350_gpio_data, %struct.wm8350_gpio_data* %62, i32 0, i32 0
  %64 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %6, align 8
  %65 = call i32 @devm_gpiochip_add_data(%struct.TYPE_7__* %61, %struct.TYPE_6__* %63, %struct.wm8350_gpio_data* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dev_err(%struct.TYPE_7__* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %79

74:                                               ; preds = %59
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load %struct.wm8350_gpio_data*, %struct.wm8350_gpio_data** %6, align 8
  %77 = call i32 @platform_set_drvdata(%struct.platform_device* %75, %struct.wm8350_gpio_data* %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %68, %23
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.wm8350* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm8350_platform_data* @dev_get_platdata(i32) #1

declare dso_local %struct.wm8350_gpio_data* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.wm8350_gpio_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm8350_gpio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
