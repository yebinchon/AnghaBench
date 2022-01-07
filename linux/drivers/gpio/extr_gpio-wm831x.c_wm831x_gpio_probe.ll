; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm831x.c_wm831x_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wm831x.c_wm831x_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.wm831x = type { %struct.TYPE_7__*, i32, %struct.wm831x_pdata }
%struct.TYPE_7__ = type { i32 }
%struct.wm831x_pdata = type { i32 }
%struct.wm831x_gpio = type { %struct.TYPE_8__, %struct.wm831x* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_pdata*, align 8
  %6 = alloca %struct.wm831x_gpio*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.wm831x* @dev_get_drvdata(i32 %11)
  store %struct.wm831x* %12, %struct.wm831x** %4, align 8
  %13 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %14 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %13, i32 0, i32 2
  store %struct.wm831x_pdata* %14, %struct.wm831x_pdata** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.wm831x_gpio* @devm_kzalloc(%struct.TYPE_9__* %16, i32 32, i32 %17)
  store %struct.wm831x_gpio* %18, %struct.wm831x_gpio** %6, align 8
  %19 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %6, align 8
  %20 = icmp eq %struct.wm831x_gpio* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %80

24:                                               ; preds = %1
  %25 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %26 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %6, align 8
  %27 = getelementptr inbounds %struct.wm831x_gpio, %struct.wm831x_gpio* %26, i32 0, i32 1
  store %struct.wm831x* %25, %struct.wm831x** %27, align 8
  %28 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %6, align 8
  %29 = getelementptr inbounds %struct.wm831x_gpio, %struct.wm831x_gpio* %28, i32 0, i32 0
  %30 = bitcast %struct.TYPE_8__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.TYPE_8__* @template_chip to i8*), i64 24, i1 false)
  %31 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %32 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %6, align 8
  %35 = getelementptr inbounds %struct.wm831x_gpio, %struct.wm831x_gpio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %6, align 8
  %40 = getelementptr inbounds %struct.wm831x_gpio, %struct.wm831x_gpio* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %41, align 8
  %42 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %43 = icmp ne %struct.wm831x_pdata* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %24
  %45 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %46 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %51 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %6, align 8
  %54 = getelementptr inbounds %struct.wm831x_gpio, %struct.wm831x_gpio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  br label %60

56:                                               ; preds = %44, %24
  %57 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %6, align 8
  %58 = getelementptr inbounds %struct.wm831x_gpio, %struct.wm831x_gpio* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 -1, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %6, align 8
  %64 = getelementptr inbounds %struct.wm831x_gpio, %struct.wm831x_gpio* %63, i32 0, i32 0
  %65 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %6, align 8
  %66 = call i32 @devm_gpiochip_add_data(%struct.TYPE_9__* %62, %struct.TYPE_8__* %64, %struct.wm831x_gpio* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dev_err(%struct.TYPE_9__* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %60
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = load %struct.wm831x_gpio*, %struct.wm831x_gpio** %6, align 8
  %78 = call i32 @platform_set_drvdata(%struct.platform_device* %76, %struct.wm831x_gpio* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %69, %21
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_gpio* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_9__*, %struct.TYPE_8__*, %struct.wm831x_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
