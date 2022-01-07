; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis_trigger.c_adis_probe_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis_trigger.c_adis_probe_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.iio_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@adis_trigger_ops = common dso_local global i32 0, align 4
@iio_trigger_generic_data_rdy_poll = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adis_probe_trigger(%struct.adis* %0, %struct.iio_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adis*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.adis* %0, %struct.adis** %4, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %5, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %8 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_12__* @iio_trigger_alloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.adis*, %struct.adis** %4, align 8
  %15 = getelementptr inbounds %struct.adis, %struct.adis* %14, i32 0, i32 0
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %15, align 8
  %16 = load %struct.adis*, %struct.adis** %4, align 8
  %17 = getelementptr inbounds %struct.adis, %struct.adis* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = icmp eq %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %89

23:                                               ; preds = %2
  %24 = load %struct.adis*, %struct.adis** %4, align 8
  %25 = getelementptr inbounds %struct.adis, %struct.adis* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.adis*, %struct.adis** %4, align 8
  %29 = getelementptr inbounds %struct.adis, %struct.adis* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32* %27, i32** %32, align 8
  %33 = load %struct.adis*, %struct.adis** %4, align 8
  %34 = getelementptr inbounds %struct.adis, %struct.adis* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32* @adis_trigger_ops, i32** %36, align 8
  %37 = load %struct.adis*, %struct.adis** %4, align 8
  %38 = getelementptr inbounds %struct.adis, %struct.adis* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load %struct.adis*, %struct.adis** %4, align 8
  %41 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_12__* %39, %struct.adis* %40)
  %42 = load %struct.adis*, %struct.adis** %4, align 8
  %43 = getelementptr inbounds %struct.adis, %struct.adis* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.adis*, %struct.adis** %4, align 8
  %52 = getelementptr inbounds %struct.adis, %struct.adis* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = call i32 @request_irq(i32 %46, i32* @iio_trigger_generic_data_rdy_poll, i32 %47, i32 %50, %struct.TYPE_12__* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %23
  br label %83

58:                                               ; preds = %23
  %59 = load %struct.adis*, %struct.adis** %4, align 8
  %60 = getelementptr inbounds %struct.adis, %struct.adis* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = call i32 @iio_trigger_register(%struct.TYPE_12__* %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.adis*, %struct.adis** %4, align 8
  %64 = getelementptr inbounds %struct.adis, %struct.adis* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = call i32 @iio_trigger_get(%struct.TYPE_12__* %65)
  %67 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %73

72:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %89

73:                                               ; preds = %71
  %74 = load %struct.adis*, %struct.adis** %4, align 8
  %75 = getelementptr inbounds %struct.adis, %struct.adis* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.adis*, %struct.adis** %4, align 8
  %80 = getelementptr inbounds %struct.adis, %struct.adis* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = call i32 @free_irq(i32 %78, %struct.TYPE_12__* %81)
  br label %83

83:                                               ; preds = %73, %57
  %84 = load %struct.adis*, %struct.adis** %4, align 8
  %85 = getelementptr inbounds %struct.adis, %struct.adis* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = call i32 @iio_trigger_free(%struct.TYPE_12__* %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %72, %20
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_12__* @iio_trigger_alloc(i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_12__*, %struct.adis*) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_12__*) #1

declare dso_local i32 @iio_trigger_get(%struct.TYPE_12__*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @iio_trigger_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
