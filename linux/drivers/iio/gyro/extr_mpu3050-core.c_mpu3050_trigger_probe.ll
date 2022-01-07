; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_trigger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_trigger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32, i32 }
%struct.mpu3050 = type { i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"drive-open-drain\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"pulse interrupts on the rising edge\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"pulse interrupts on the falling edge\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"interrupts active high level\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"interrupts active low level\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"unsupported IRQ trigger specified (%lx), enforce rising edge\0A\00", align 1
@IRQF_SHARED = common dso_local global i64 0, align 8
@mpu3050_irq_handler = common dso_local global i32 0, align 4
@mpu3050_irq_thread = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"can't get IRQ %d, error %d\0A\00", align 1
@mpu3050_trigger_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @mpu3050_trigger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu3050_trigger_probe(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpu3050*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.mpu3050* @iio_priv(%struct.iio_dev* %9)
  store %struct.mpu3050* %10, %struct.mpu3050** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 1
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_9__* @devm_iio_trigger_alloc(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %21 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %20, i32 0, i32 4
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %21, align 8
  %22 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %23 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %22, i32 0, i32 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %151

29:                                               ; preds = %2
  %30 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %31 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %30, i32 0, i32 5
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @of_property_read_bool(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %39 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %29
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @irq_get_irq_data(i32 %41)
  %43 = call i64 @irqd_get_trigger_type(i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  switch i64 %44, label %75 [
    i64 128, label %45
    i64 131, label %49
    i64 130, label %55
    i64 129, label %64
  ]

45:                                               ; preds = %40
  %46 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 1
  %48 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %82

49:                                               ; preds = %40
  %50 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %51 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 1
  %54 = call i32 @dev_info(i32* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %82

55:                                               ; preds = %40
  %56 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %57 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  %58 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 1
  %60 = call i32 @dev_info(i32* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i64, i64* @IRQF_ONESHOT, align 8
  %62 = load i64, i64* %7, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %7, align 8
  br label %82

64:                                               ; preds = %40
  %65 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %66 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %68 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load i64, i64* @IRQF_ONESHOT, align 8
  %70 = load i64, i64* %7, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %7, align 8
  %72 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 1
  %74 = call i32 @dev_info(i32* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %82

75:                                               ; preds = %40
  %76 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 1
  %78 = bitcast i32* %77 to %struct.TYPE_10__*
  %79 = load i64, i64* %7, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (%struct.TYPE_10__*, i8*, i32, ...) @dev_err(%struct.TYPE_10__* %78, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  store i64 128, i64* %7, align 8
  br label %82

82:                                               ; preds = %75, %64, %55, %49, %45
  %83 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %84 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i64, i64* @IRQF_SHARED, align 8
  %89 = load i64, i64* %7, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @mpu3050_irq_handler, align 4
  %94 = load i32, i32* @mpu3050_irq_thread, align 4
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %97 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %96, i32 0, i32 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %102 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %101, i32 0, i32 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = call i32 @request_threaded_irq(i32 %92, i32 %93, i32 %94, i64 %95, i32 %100, %struct.TYPE_9__* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %91
  %108 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %109 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %108, i32 0, i32 5
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 (%struct.TYPE_10__*, i8*, i32, ...) @dev_err(%struct.TYPE_10__* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %151

115:                                              ; preds = %91
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %118 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %120 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %119, i32 0, i32 5
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %123 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %122, i32 0, i32 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %126, align 8
  %127 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %128 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %127, i32 0, i32 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i32* @mpu3050_trigger_ops, i32** %130, align 8
  %131 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %132 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %131, i32 0, i32 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %135 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_9__* %133, %struct.iio_dev* %134)
  %136 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %137 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %136, i32 0, i32 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = call i32 @iio_trigger_register(%struct.TYPE_9__* %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %115
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %3, align 4
  br label %151

144:                                              ; preds = %115
  %145 = load %struct.mpu3050*, %struct.mpu3050** %6, align 8
  %146 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %145, i32 0, i32 4
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = call i32 @iio_trigger_get(%struct.TYPE_9__* %147)
  %149 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %150 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %144, %142, %107, %26
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.mpu3050* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_9__* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i64 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32, ...) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i64, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_9__*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_9__*) #1

declare dso_local i32 @iio_trigger_get(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
