; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-altera-a10sr.c_altr_a10sr_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-altera-a10sr.c_altr_a10sr_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.altr_a10sr_gpio = type { %struct.TYPE_7__, i32 }
%struct.altr_a10sr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@altr_a10sr_gc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @altr_a10sr_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altr_a10sr_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.altr_a10sr_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.altr_a10sr*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.altr_a10sr* @dev_get_drvdata(i32 %10)
  store %struct.altr_a10sr* %11, %struct.altr_a10sr** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.altr_a10sr_gpio* @devm_kzalloc(%struct.TYPE_6__* %13, i32 12, i32 %14)
  store %struct.altr_a10sr_gpio* %15, %struct.altr_a10sr_gpio** %4, align 8
  %16 = load %struct.altr_a10sr_gpio*, %struct.altr_a10sr_gpio** %4, align 8
  %17 = icmp ne %struct.altr_a10sr_gpio* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %62

21:                                               ; preds = %1
  %22 = load %struct.altr_a10sr*, %struct.altr_a10sr** %6, align 8
  %23 = getelementptr inbounds %struct.altr_a10sr, %struct.altr_a10sr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.altr_a10sr_gpio*, %struct.altr_a10sr_gpio** %4, align 8
  %26 = getelementptr inbounds %struct.altr_a10sr_gpio, %struct.altr_a10sr_gpio* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.altr_a10sr_gpio*, %struct.altr_a10sr_gpio** %4, align 8
  %28 = getelementptr inbounds %struct.altr_a10sr_gpio, %struct.altr_a10sr_gpio* %27, i32 0, i32 0
  %29 = bitcast %struct.TYPE_7__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast (%struct.TYPE_7__* @altr_a10sr_gc to i8*), i64 8, i1 false)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.altr_a10sr_gpio*, %struct.altr_a10sr_gpio** %4, align 8
  %35 = getelementptr inbounds %struct.altr_a10sr_gpio, %struct.altr_a10sr_gpio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.altr_a10sr_gpio*, %struct.altr_a10sr_gpio** %4, align 8
  %42 = getelementptr inbounds %struct.altr_a10sr_gpio, %struct.altr_a10sr_gpio* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.altr_a10sr_gpio*, %struct.altr_a10sr_gpio** %4, align 8
  %47 = getelementptr inbounds %struct.altr_a10sr_gpio, %struct.altr_a10sr_gpio* %46, i32 0, i32 0
  %48 = load %struct.altr_a10sr_gpio*, %struct.altr_a10sr_gpio** %4, align 8
  %49 = call i32 @devm_gpiochip_add_data(%struct.TYPE_6__* %45, %struct.TYPE_7__* %47, %struct.altr_a10sr_gpio* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %21
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @dev_err(%struct.TYPE_6__* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %21
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load %struct.altr_a10sr_gpio*, %struct.altr_a10sr_gpio** %4, align 8
  %61 = call i32 @platform_set_drvdata(%struct.platform_device* %59, %struct.altr_a10sr_gpio* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %52, %18
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.altr_a10sr* @dev_get_drvdata(i32) #1

declare dso_local %struct.altr_a10sr_gpio* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.altr_a10sr_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.altr_a10sr_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
