; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_probe_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/bmi160/extr_bmi160_core.c_bmi160_probe_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32, i32 }
%struct.bmi160_data = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@iio_trigger_generic_data_rdy_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"bmi160\00", align 1
@bmi160_trigger_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bmi160_probe_trigger(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bmi160_data*, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.bmi160_data* @iio_priv(%struct.iio_dev* %10)
  store %struct.bmi160_data* %11, %struct.bmi160_data** %8, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %12, i32 0, i32 1
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_8__* @devm_iio_trigger_alloc(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.bmi160_data*, %struct.bmi160_data** %8, align 8
  %22 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %21, i32 0, i32 0
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %22, align 8
  %23 = load %struct.bmi160_data*, %struct.bmi160_data** %8, align 8
  %24 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %79

30:                                               ; preds = %3
  %31 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.bmi160_data*, %struct.bmi160_data** %8, align 8
  %36 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = call i32 @devm_request_irq(i32* %32, i32 %33, i32* @iio_trigger_generic_data_rdy_poll, i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %79

43:                                               ; preds = %30
  %44 = load %struct.bmi160_data*, %struct.bmi160_data** %8, align 8
  %45 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @regmap_get_device(i32 %46)
  %48 = load %struct.bmi160_data*, %struct.bmi160_data** %8, align 8
  %49 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 8
  %53 = load %struct.bmi160_data*, %struct.bmi160_data** %8, align 8
  %54 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32* @bmi160_trigger_ops, i32** %56, align 8
  %57 = load %struct.bmi160_data*, %struct.bmi160_data** %8, align 8
  %58 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %61 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_8__* %59, %struct.iio_dev* %60)
  %62 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 1
  %64 = load %struct.bmi160_data*, %struct.bmi160_data** %8, align 8
  %65 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i32 @devm_iio_trigger_register(i32* %63, %struct.TYPE_8__* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %43
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %79

72:                                               ; preds = %43
  %73 = load %struct.bmi160_data*, %struct.bmi160_data** %8, align 8
  %74 = getelementptr inbounds %struct.bmi160_data, %struct.bmi160_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = call i32 @iio_trigger_get(%struct.TYPE_8__* %75)
  %77 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %70, %41, %27
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.bmi160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_8__* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32*, i32, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @regmap_get_device(i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_8__*, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_trigger_register(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @iio_trigger_get(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
