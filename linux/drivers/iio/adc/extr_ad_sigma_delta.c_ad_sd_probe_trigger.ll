; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_probe_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad_sigma_delta.c_ad_sd_probe_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32 }
%struct.ad_sigma_delta = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ad_sd_trigger_ops = common dso_local global i32 0, align 4
@ad_sd_data_rdy_trig_poll = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ad_sd_probe_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad_sd_probe_trigger(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad_sigma_delta*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.ad_sigma_delta* @iio_device_get_drvdata(%struct.iio_dev* %6)
  store %struct.ad_sigma_delta* %7, %struct.ad_sigma_delta** %4, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_10__* @iio_trigger_alloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %16 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %15, i32 0, i32 1
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %16, align 8
  %17 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %18 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = icmp eq %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %103

24:                                               ; preds = %1
  %25 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %26 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i32* @ad_sd_trigger_ops, i32** %28, align 8
  %29 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %30 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %29, i32 0, i32 3
  %31 = call i32 @init_completion(i32* %30)
  %32 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %33 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ad_sd_data_rdy_trig_poll, align 4
  %38 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %39 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %40 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %43 = call i32 @request_irq(i32 %36, i32 %37, i32 %38, i32 %41, %struct.ad_sigma_delta* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %24
  br label %98

47:                                               ; preds = %24
  %48 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %49 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %47
  %53 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %54 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %56 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @disable_irq_nosync(i32 %59)
  br label %61

61:                                               ; preds = %52, %47
  %62 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %63 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %62, i32 0, i32 2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %67 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32* %65, i32** %70, align 8
  %71 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %72 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %75 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_10__* %73, %struct.ad_sigma_delta* %74)
  %76 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %77 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = call i32 @iio_trigger_register(%struct.TYPE_10__* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %61
  br label %90

83:                                               ; preds = %61
  %84 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %85 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = call i32 @iio_trigger_get(%struct.TYPE_10__* %86)
  %88 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %89 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %2, align 4
  br label %105

90:                                               ; preds = %82
  %91 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %92 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %91, i32 0, i32 2
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %97 = call i32 @free_irq(i32 %95, %struct.ad_sigma_delta* %96)
  br label %98

98:                                               ; preds = %90, %46
  %99 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %4, align 8
  %100 = getelementptr inbounds %struct.ad_sigma_delta, %struct.ad_sigma_delta* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = call i32 @iio_trigger_free(%struct.TYPE_10__* %101)
  br label %103

103:                                              ; preds = %98, %21
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %83
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.ad_sigma_delta* @iio_device_get_drvdata(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_10__* @iio_trigger_alloc(i8*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.ad_sigma_delta*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_10__*, %struct.ad_sigma_delta*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_10__*) #1

declare dso_local i32 @iio_trigger_get(%struct.TYPE_10__*) #1

declare dso_local i32 @free_irq(i32, %struct.ad_sigma_delta*) #1

declare dso_local i32 @iio_trigger_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
