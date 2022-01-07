; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pisosr.c_pisosr_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pisosr.c_pisosr_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.spi_device = type { %struct.device }
%struct.pisosr_gpio = type { i32, %struct.TYPE_3__, i32, i32, i8*, %struct.spi_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to allocate load GPIO\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to register gpiochip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @pisosr_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pisosr_gpio_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pisosr_gpio*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @devm_kzalloc(%struct.device* %9, i32 48, i32 %10)
  %12 = bitcast i8* %11 to %struct.pisosr_gpio*
  store %struct.pisosr_gpio* %12, %struct.pisosr_gpio** %5, align 8
  %13 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %14 = icmp ne %struct.pisosr_gpio* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %101

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %21 = call i32 @spi_set_drvdata(%struct.spi_device* %19, %struct.pisosr_gpio* %20)
  %22 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %23 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %22, i32 0, i32 1
  %24 = bitcast %struct.TYPE_3__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_3__* @template_chip to i8*), i64 16, i1 false)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %27 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store %struct.device* %25, %struct.device** %28, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %33 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @of_property_read_u16(i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %34)
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %38 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %37, i32 0, i32 5
  store %struct.spi_device* %36, %struct.spi_device** %38, align 8
  %39 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %40 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @DIV_ROUND_UP(i32 %42, i32 8)
  %44 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %45 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %48 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @devm_kzalloc(%struct.device* %46, i32 %49, i32 %50)
  %52 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %53 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %55 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %18
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %101

61:                                               ; preds = %18
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %64 = call i32 @devm_gpiod_get_optional(%struct.device* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %66 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %68 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %61
  %73 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %74 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @EPROBE_DEFER, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %72
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %101

86:                                               ; preds = %61
  %87 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %88 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %87, i32 0, i32 2
  %89 = call i32 @mutex_init(i32* %88)
  %90 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %91 = getelementptr inbounds %struct.pisosr_gpio, %struct.pisosr_gpio* %90, i32 0, i32 1
  %92 = load %struct.pisosr_gpio*, %struct.pisosr_gpio** %5, align 8
  %93 = call i32 @gpiochip_add_data(%struct.TYPE_3__* %91, %struct.pisosr_gpio* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %101

100:                                              ; preds = %86
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %96, %84, %58, %15
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.pisosr_gpio*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @of_property_read_u16(i32, i8*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_3__*, %struct.pisosr_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
