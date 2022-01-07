; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-arizona.c_arizona_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-arizona.c_arizona_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_10__ }
%struct.arizona = type { i32, %struct.TYPE_8__*, %struct.arizona_pdata }
%struct.TYPE_8__ = type { i32 }
%struct.arizona_pdata = type { i32 }
%struct.arizona_gpio = type { %struct.TYPE_9__, %struct.arizona* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"Unknown chip variant %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not register gpiochip, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @arizona_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca %struct.arizona_pdata*, align 8
  %6 = alloca %struct.arizona_gpio*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.arizona* @dev_get_drvdata(i32 %11)
  store %struct.arizona* %12, %struct.arizona** %4, align 8
  %13 = load %struct.arizona*, %struct.arizona** %4, align 8
  %14 = getelementptr inbounds %struct.arizona, %struct.arizona* %13, i32 0, i32 2
  store %struct.arizona_pdata* %14, %struct.arizona_pdata** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.arizona_gpio* @devm_kzalloc(%struct.TYPE_10__* %16, i32 32, i32 %17)
  store %struct.arizona_gpio* %18, %struct.arizona_gpio** %6, align 8
  %19 = load %struct.arizona_gpio*, %struct.arizona_gpio** %6, align 8
  %20 = icmp ne %struct.arizona_gpio* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %91

24:                                               ; preds = %1
  %25 = load %struct.arizona*, %struct.arizona** %4, align 8
  %26 = load %struct.arizona_gpio*, %struct.arizona_gpio** %6, align 8
  %27 = getelementptr inbounds %struct.arizona_gpio, %struct.arizona_gpio* %26, i32 0, i32 1
  store %struct.arizona* %25, %struct.arizona** %27, align 8
  %28 = load %struct.arizona_gpio*, %struct.arizona_gpio** %6, align 8
  %29 = getelementptr inbounds %struct.arizona_gpio, %struct.arizona_gpio* %28, i32 0, i32 0
  %30 = bitcast %struct.TYPE_9__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.TYPE_9__* @template_chip to i8*), i64 24, i1 false)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.arizona_gpio*, %struct.arizona_gpio** %6, align 8
  %34 = getelementptr inbounds %struct.arizona_gpio, %struct.arizona_gpio* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %35, align 8
  %36 = load %struct.arizona*, %struct.arizona** %4, align 8
  %37 = getelementptr inbounds %struct.arizona, %struct.arizona* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %47 [
    i32 132, label %39
    i32 131, label %39
    i32 130, label %39
    i32 129, label %39
    i32 128, label %39
    i32 134, label %39
    i32 133, label %43
    i32 135, label %43
  ]

39:                                               ; preds = %24, %24, %24, %24, %24, %24
  %40 = load %struct.arizona_gpio*, %struct.arizona_gpio** %6, align 8
  %41 = getelementptr inbounds %struct.arizona_gpio, %struct.arizona_gpio* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 5, i32* %42, align 8
  br label %56

43:                                               ; preds = %24, %24
  %44 = load %struct.arizona_gpio*, %struct.arizona_gpio** %6, align 8
  %45 = getelementptr inbounds %struct.arizona_gpio, %struct.arizona_gpio* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i32 2, i32* %46, align 8
  br label %56

47:                                               ; preds = %24
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.arizona*, %struct.arizona** %4, align 8
  %51 = getelementptr inbounds %struct.arizona, %struct.arizona* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(%struct.TYPE_10__* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %91

56:                                               ; preds = %43, %39
  %57 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %58 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %63 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.arizona_gpio*, %struct.arizona_gpio** %6, align 8
  %66 = getelementptr inbounds %struct.arizona_gpio, %struct.arizona_gpio* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  br label %72

68:                                               ; preds = %56
  %69 = load %struct.arizona_gpio*, %struct.arizona_gpio** %6, align 8
  %70 = getelementptr inbounds %struct.arizona_gpio, %struct.arizona_gpio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i32 -1, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @pm_runtime_enable(%struct.TYPE_10__* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.arizona_gpio*, %struct.arizona_gpio** %6, align 8
  %79 = getelementptr inbounds %struct.arizona_gpio, %struct.arizona_gpio* %78, i32 0, i32 0
  %80 = load %struct.arizona_gpio*, %struct.arizona_gpio** %6, align 8
  %81 = call i32 @devm_gpiochip_add_data(%struct.TYPE_10__* %77, %struct.TYPE_9__* %79, %struct.arizona_gpio* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dev_err(%struct.TYPE_10__* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %91

90:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %84, %47, %21
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local %struct.arizona_gpio* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.arizona_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
