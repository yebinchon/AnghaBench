; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp085_fetch_eoc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp085_fetch_eoc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bmp280_data = type { i32 }

@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"non-rising trigger given for EOC interrupt, trying to enforce it\0A\00", align 1
@bmp085_eoc_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to request DRDY IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32, %struct.bmp280_data*)* @bmp085_fetch_eoc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp085_fetch_eoc_irq(%struct.device* %0, i8* %1, i32 %2, %struct.bmp280_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bmp280_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bmp280_data* %3, %struct.bmp280_data** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @irq_get_irq_data(i32 %12)
  %14 = call i64 @irqd_get_trigger_type(i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  store i64 %21, i64* %10, align 8
  br label %22

22:                                               ; preds = %18, %4
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @bmp085_eoc_irq, align 4
  %26 = load i64, i64* %10, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.bmp280_data*, %struct.bmp280_data** %9, align 8
  %29 = call i32 @devm_request_threaded_irq(%struct.device* %23, i32 %24, i32 %25, i32* null, i64 %26, i8* %27, %struct.bmp280_data* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %38

35:                                               ; preds = %22
  %36 = load %struct.bmp280_data*, %struct.bmp280_data** %9, align 8
  %37 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32*, i64, i8*, %struct.bmp280_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
