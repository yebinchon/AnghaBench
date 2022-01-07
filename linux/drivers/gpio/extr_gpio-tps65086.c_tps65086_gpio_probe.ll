; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps65086.c_tps65086_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tps65086.c_tps65086_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tps65086_gpio = type { %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65086_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65086_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps65086_gpio*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tps65086_gpio* @devm_kzalloc(%struct.TYPE_7__* %7, i32 16, i32 %8)
  store %struct.tps65086_gpio* %9, %struct.tps65086_gpio** %4, align 8
  %10 = load %struct.tps65086_gpio*, %struct.tps65086_gpio** %4, align 8
  %11 = icmp ne %struct.tps65086_gpio* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.tps65086_gpio*, %struct.tps65086_gpio** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.tps65086_gpio* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_8__* @dev_get_drvdata(i32 %22)
  %24 = load %struct.tps65086_gpio*, %struct.tps65086_gpio** %4, align 8
  %25 = getelementptr inbounds %struct.tps65086_gpio, %struct.tps65086_gpio* %24, i32 0, i32 1
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %25, align 8
  %26 = load %struct.tps65086_gpio*, %struct.tps65086_gpio** %4, align 8
  %27 = getelementptr inbounds %struct.tps65086_gpio, %struct.tps65086_gpio* %26, i32 0, i32 0
  %28 = bitcast %struct.TYPE_6__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 4 bitcast (%struct.TYPE_6__* @template_chip to i8*), i64 4, i1 false)
  %29 = load %struct.tps65086_gpio*, %struct.tps65086_gpio** %4, align 8
  %30 = getelementptr inbounds %struct.tps65086_gpio, %struct.tps65086_gpio* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tps65086_gpio*, %struct.tps65086_gpio** %4, align 8
  %35 = getelementptr inbounds %struct.tps65086_gpio, %struct.tps65086_gpio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.tps65086_gpio*, %struct.tps65086_gpio** %4, align 8
  %38 = getelementptr inbounds %struct.tps65086_gpio, %struct.tps65086_gpio* %37, i32 0, i32 0
  %39 = load %struct.tps65086_gpio*, %struct.tps65086_gpio** %4, align 8
  %40 = call i32 @gpiochip_add_data(%struct.TYPE_6__* %38, %struct.tps65086_gpio* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %15
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_err(%struct.TYPE_7__* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %43, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.tps65086_gpio* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps65086_gpio*) #1

declare dso_local %struct.TYPE_8__* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_6__*, %struct.tps65086_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
