; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_itg3200_buffer.c_itg3200_probe_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_itg3200_buffer.c_itg3200_probe_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32 }
%struct.itg3200 = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@iio_trigger_generic_data_rdy_poll = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"itg3200_data_rdy\00", align 1
@itg3200_trigger_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @itg3200_probe_trigger(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.itg3200*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.itg3200* @iio_priv(%struct.iio_dev* %6)
  store %struct.itg3200* %7, %struct.itg3200** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_12__* @iio_trigger_alloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %16 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %15, i32 0, i32 0
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %16, align 8
  %17 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %18 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %87

24:                                               ; preds = %1
  %25 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %26 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %31 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %32 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = call i32 @request_irq(i32 %29, i32* @iio_trigger_generic_data_rdy_poll, i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %81

38:                                               ; preds = %24
  %39 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %40 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %44 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32* %42, i32** %47, align 8
  %48 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %49 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i32* @itg3200_trigger_ops, i32** %51, align 8
  %52 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %53 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %56 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_12__* %54, %struct.iio_dev* %55)
  %57 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %58 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = call i32 @iio_trigger_register(%struct.TYPE_12__* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %38
  br label %71

64:                                               ; preds = %38
  %65 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %66 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = call i32 @iio_trigger_get(%struct.TYPE_12__* %67)
  %69 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %2, align 4
  br label %87

71:                                               ; preds = %63
  %72 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %73 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %78 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = call i32 @free_irq(i32 %76, %struct.TYPE_12__* %79)
  br label %81

81:                                               ; preds = %71, %37
  %82 = load %struct.itg3200*, %struct.itg3200** %5, align 8
  %83 = getelementptr inbounds %struct.itg3200, %struct.itg3200* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = call i32 @iio_trigger_free(%struct.TYPE_12__* %84)
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %64, %21
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.itg3200* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_12__* @iio_trigger_alloc(i8*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_12__*, %struct.iio_dev*) #1

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
