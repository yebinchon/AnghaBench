; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.sun4i_gpadc_dev = type { i32 }
%struct.sun4i_gpadc_iio = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to get virq for irq %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"could not request %s interrupt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i8*, i32, i8*, i32*, i32*)* @sun4i_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_irq_init(%struct.platform_device* %0, i8* %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sun4i_gpadc_dev*, align 8
  %16 = alloca %struct.sun4i_gpadc_iio*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call %struct.sun4i_gpadc_dev* @dev_get_drvdata(%struct.TYPE_4__* %20)
  store %struct.sun4i_gpadc_dev* %21, %struct.sun4i_gpadc_dev** %15, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.sun4i_gpadc_dev* @dev_get_drvdata(%struct.TYPE_4__* %23)
  %25 = call %struct.sun4i_gpadc_iio* @iio_priv(%struct.sun4i_gpadc_dev* %24)
  store %struct.sun4i_gpadc_iio* %25, %struct.sun4i_gpadc_iio** %16, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @atomic_set(i32* %26, i32 1)
  %28 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @platform_get_irq_byname(%struct.platform_device* %28, i8* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %7, align 4
  br label %75

35:                                               ; preds = %6
  %36 = load %struct.sun4i_gpadc_dev*, %struct.sun4i_gpadc_dev** %15, align 8
  %37 = getelementptr inbounds %struct.sun4i_gpadc_dev, %struct.sun4i_gpadc_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @regmap_irq_get_virq(i32 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 (%struct.TYPE_4__*, i8*, i8*, ...) @dev_err(%struct.TYPE_4__* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %7, align 4
  br label %75

49:                                               ; preds = %35
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %16, align 8
  %59 = call i32 @devm_request_any_context_irq(%struct.TYPE_4__* %53, i32 %55, i32 %56, i32 0, i8* %57, %struct.sun4i_gpadc_iio* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %49
  %63 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 (%struct.TYPE_4__*, i8*, i8*, ...) @dev_err(%struct.TYPE_4__* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %65, i32 %66)
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %7, align 4
  br label %75

69:                                               ; preds = %49
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @disable_irq(i32 %71)
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @atomic_set(i32* %73, i32 0)
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %69, %62, %43, %33
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local %struct.sun4i_gpadc_dev* @dev_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local %struct.sun4i_gpadc_iio* @iio_priv(%struct.sun4i_gpadc_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i8*, ...) #1

declare dso_local i32 @devm_request_any_context_irq(%struct.TYPE_4__*, i32, i32, i32, i8*, %struct.sun4i_gpadc_iio*) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
