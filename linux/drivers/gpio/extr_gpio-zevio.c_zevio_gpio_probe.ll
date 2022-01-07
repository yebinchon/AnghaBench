; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zevio.c_zevio_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-zevio.c_zevio_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.zevio_gpio = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zevio_gpio_chip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to add gpiochip: %d\0A\00", align 1
@ZEVIO_GPIO_INT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ZEVIO GPIO controller set up!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zevio_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zevio_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.zevio_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.zevio_gpio* @devm_kzalloc(%struct.TYPE_8__* %8, i32 24, i32 %9)
  store %struct.zevio_gpio* %10, %struct.zevio_gpio** %4, align 8
  %11 = load %struct.zevio_gpio*, %struct.zevio_gpio** %4, align 8
  %12 = icmp ne %struct.zevio_gpio* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %73

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.zevio_gpio*, %struct.zevio_gpio** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.zevio_gpio* %18)
  %20 = load %struct.zevio_gpio*, %struct.zevio_gpio** %4, align 8
  %21 = getelementptr inbounds %struct.zevio_gpio, %struct.zevio_gpio* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = bitcast %struct.TYPE_6__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_6__* @zevio_gpio_chip to i8*), i64 16, i1 false)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.zevio_gpio*, %struct.zevio_gpio** %4, align 8
  %27 = getelementptr inbounds %struct.zevio_gpio, %struct.zevio_gpio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.zevio_gpio*, %struct.zevio_gpio** %4, align 8
  %35 = getelementptr inbounds %struct.zevio_gpio, %struct.zevio_gpio* %34, i32 0, i32 0
  %36 = load %struct.zevio_gpio*, %struct.zevio_gpio** %4, align 8
  %37 = call i32 @of_mm_gpiochip_add_data(i32 %33, %struct.TYPE_7__* %35, %struct.zevio_gpio* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %16
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(%struct.TYPE_8__* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %73

46:                                               ; preds = %16
  %47 = load %struct.zevio_gpio*, %struct.zevio_gpio** %4, align 8
  %48 = getelementptr inbounds %struct.zevio_gpio, %struct.zevio_gpio* %47, i32 0, i32 1
  %49 = call i32 @spin_lock_init(i32* %48)
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %63, %46
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.zevio_gpio*, %struct.zevio_gpio** %4, align 8
  %53 = getelementptr inbounds %struct.zevio_gpio, %struct.zevio_gpio* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.zevio_gpio*, %struct.zevio_gpio** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @ZEVIO_GPIO_INT_MASK, align 4
  %62 = call i32 @zevio_gpio_port_set(%struct.zevio_gpio* %59, i32 %60, i32 %61, i32 255)
  br label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 8
  store i32 %65, i32* %6, align 4
  br label %50

66:                                               ; preds = %50
  %67 = load %struct.zevio_gpio*, %struct.zevio_gpio** %4, align 8
  %68 = getelementptr inbounds %struct.zevio_gpio, %struct.zevio_gpio* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = call i32 @dev_dbg(%struct.TYPE_8__* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %66, %40, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.zevio_gpio* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zevio_gpio*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @of_mm_gpiochip_add_data(i32, %struct.TYPE_7__*, %struct.zevio_gpio*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @zevio_gpio_port_set(%struct.zevio_gpio*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
