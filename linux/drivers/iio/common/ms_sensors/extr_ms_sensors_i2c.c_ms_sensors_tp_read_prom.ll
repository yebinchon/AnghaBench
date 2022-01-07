; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_tp_read_prom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_tp_read_prom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ms_tp_dev = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@MS_SENSORS_TP_PROM_WORDS_NB = common dso_local global i32 0, align 4
@MS_SENSORS_TP_PROM_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Calibration coefficients crc check error\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ms_sensors_tp_read_prom(%struct.ms_tp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ms_tp_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ms_tp_dev* %0, %struct.ms_tp_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MS_SENSORS_TP_PROM_WORDS_NB, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %3, align 8
  %12 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* @MS_SENSORS_TP_PROM_READ, align 8
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @ms_sensors_read_prom_word(%struct.TYPE_2__* %13, i64 %18, i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %10
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %51

30:                                               ; preds = %10
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %6

34:                                               ; preds = %6
  %35 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %3, align 8
  %36 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @MS_SENSORS_TP_PROM_WORDS_NB, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @ms_sensors_tp_crc_valid(i32* %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %3, align 8
  %44 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %42, %28
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ms_sensors_read_prom_word(%struct.TYPE_2__*, i64, i32*) #1

declare dso_local i32 @ms_sensors_tp_crc_valid(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
