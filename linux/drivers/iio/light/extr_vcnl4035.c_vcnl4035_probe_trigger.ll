; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_probe_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_probe_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.vcnl4035_data = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@vcnl4035_trigger_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"iio trigger register failed\0A\00", align 1
@vcnl4035_trigger_consumer_handler = common dso_local global i32 0, align 4
@iio_triggered_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@vcnl4035_drdy_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@VCNL4035_IRQ_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"request irq %d for trigger0 failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @vcnl4035_probe_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcnl4035_probe_trigger(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcnl4035_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.vcnl4035_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.vcnl4035_data* %7, %struct.vcnl4035_data** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %13 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_10__* @devm_iio_trigger_alloc(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %5, align 8
  %20 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %19, i32 0, i32 1
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %20, align 8
  %21 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %5, align 8
  %22 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %113

28:                                               ; preds = %1
  %29 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %5, align 8
  %34 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 8
  %38 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %5, align 8
  %39 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32* @vcnl4035_trigger_ops, i32** %41, align 8
  %42 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %5, align 8
  %43 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %46 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_10__* %44, %struct.iio_dev* %45)
  %47 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %5, align 8
  %52 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = call i32 @devm_iio_trigger_register(i32 %50, %struct.TYPE_10__* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %28
  %58 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %5, align 8
  %59 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %113

64:                                               ; preds = %28
  %65 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %70 = load i32, i32* @vcnl4035_trigger_consumer_handler, align 4
  %71 = call i32 @devm_iio_triggered_buffer_setup(i32 %68, %struct.iio_dev* %69, i32* null, i32 %70, i32* @iio_triggered_buffer_setup_ops)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %5, align 8
  %76 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = call i32 (i32*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %113

81:                                               ; preds = %64
  %82 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %5, align 8
  %83 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %5, align 8
  %87 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @vcnl4035_drdy_irq_thread, align 4
  %92 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %93 = load i32, i32* @IRQF_ONESHOT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @VCNL4035_IRQ_NAME, align 4
  %96 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %97 = call i32 @devm_request_threaded_irq(i32* %85, i32 %90, i32* null, i32 %91, i32 %94, i32 %95, %struct.iio_dev* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %81
  %101 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %5, align 8
  %102 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %5, align 8
  %106 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32*, i8*, ...) @dev_err(i32* %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %100, %81
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %74, %57, %25
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.vcnl4035_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_10__* @devm_iio_trigger_alloc(i32, i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_10__*, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_trigger_register(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(i32, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
