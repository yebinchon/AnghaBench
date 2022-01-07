; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_iio-trig-interrupt.c_iio_interrupt_trigger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_iio-trig-interrupt.c_iio_interrupt_trigger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.iio_interrupt_trigger_info = type { i32 }
%struct.iio_trigger = type { i32, i32* }
%struct.resource = type { i64, i32 }

@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IRQF_TRIGGER_MASK = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"irqtrig%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@iio_interrupt_trigger_ops = common dso_local global i32 0, align 4
@iio_interrupt_trigger_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"request IRQ-%d failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iio_interrupt_trigger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_interrupt_trigger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iio_interrupt_trigger_info*, align 8
  %5 = alloca %struct.iio_trigger*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_IRQ, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %7, align 8
  %13 = load %struct.resource*, %struct.resource** %7, align 8
  %14 = icmp eq %struct.resource* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %90

18:                                               ; preds = %1
  %19 = load %struct.resource*, %struct.resource** %7, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IRQF_TRIGGER_MASK, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* @IRQF_SHARED, align 8
  %25 = or i64 %23, %24
  store i64 %25, i64* %6, align 8
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.iio_trigger* @iio_trigger_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  store %struct.iio_trigger* %30, %struct.iio_trigger** %5, align 8
  %31 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %32 = icmp ne %struct.iio_trigger* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %88

36:                                               ; preds = %18
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.iio_interrupt_trigger_info* @kzalloc(i32 4, i32 %37)
  store %struct.iio_interrupt_trigger_info* %38, %struct.iio_interrupt_trigger_info** %4, align 8
  %39 = load %struct.iio_interrupt_trigger_info*, %struct.iio_interrupt_trigger_info** %4, align 8
  %40 = icmp ne %struct.iio_interrupt_trigger_info* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %85

44:                                               ; preds = %36
  %45 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %46 = load %struct.iio_interrupt_trigger_info*, %struct.iio_interrupt_trigger_info** %4, align 8
  %47 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %45, %struct.iio_interrupt_trigger_info* %46)
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.iio_interrupt_trigger_info*, %struct.iio_interrupt_trigger_info** %4, align 8
  %50 = getelementptr inbounds %struct.iio_interrupt_trigger_info, %struct.iio_interrupt_trigger_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %52 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %51, i32 0, i32 1
  store i32* @iio_interrupt_trigger_ops, i32** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @iio_interrupt_trigger_poll, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %57 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %60 = call i32 @request_irq(i32 %53, i32 %54, i64 %55, i32 %58, %struct.iio_trigger* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %44
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %82

68:                                               ; preds = %44
  %69 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %70 = call i32 @iio_trigger_register(%struct.iio_trigger* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %78

74:                                               ; preds = %68
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %77 = call i32 @platform_set_drvdata(%struct.platform_device* %75, %struct.iio_trigger* %76)
  store i32 0, i32* %2, align 4
  br label %90

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %81 = call i32 @free_irq(i32 %79, %struct.iio_trigger* %80)
  br label %82

82:                                               ; preds = %78, %63
  %83 = load %struct.iio_interrupt_trigger_info*, %struct.iio_interrupt_trigger_info** %4, align 8
  %84 = call i32 @kfree(%struct.iio_interrupt_trigger_info* %83)
  br label %85

85:                                               ; preds = %82, %41
  %86 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %87 = call i32 @iio_trigger_free(%struct.iio_trigger* %86)
  br label %88

88:                                               ; preds = %85, %33
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %74, %15
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.iio_trigger* @iio_trigger_alloc(i8*, i32) #1

declare dso_local %struct.iio_interrupt_trigger_info* @kzalloc(i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, %struct.iio_interrupt_trigger_info*) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.iio_trigger*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @iio_trigger_register(%struct.iio_trigger*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_trigger*) #1

declare dso_local i32 @free_irq(i32, %struct.iio_trigger*) #1

declare dso_local i32 @kfree(%struct.iio_interrupt_trigger_info*) #1

declare dso_local i32 @iio_trigger_free(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
