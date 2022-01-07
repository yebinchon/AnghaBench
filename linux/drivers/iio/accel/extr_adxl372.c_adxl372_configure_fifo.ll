; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_configure_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_configure_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxl372_state = type { i32, i32, i32, i32, i32 }

@ADXL372_STANDBY = common dso_local global i32 0, align 4
@ADXL372_FIFO_SAMPLES = common dso_local global i32 0, align 4
@ADXL372_FIFO_CTL = common dso_local global i32 0, align 4
@ADXL372_FULL_BW_MEASUREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adxl372_state*)* @adxl372_configure_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl372_configure_fifo(%struct.adxl372_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adxl372_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adxl372_state* %0, %struct.adxl372_state** %3, align 8
  %7 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %8 = load i32, i32* @ADXL372_STANDBY, align 4
  %9 = call i32 @adxl372_set_op_mode(%struct.adxl372_state* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %60

14:                                               ; preds = %1
  %15 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %16 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %19 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul i32 %17, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %23 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ADXL372_FIFO_CTL_FORMAT_MODE(i32 %24)
  %26 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %27 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ADXL372_FIFO_CTL_MODE_MODE(i32 %28)
  %30 = or i32 %25, %29
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ADXL372_FIFO_CTL_SAMPLES_MODE(i32 %31)
  %33 = or i32 %30, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %35 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ADXL372_FIFO_SAMPLES, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 255
  %40 = call i32 @regmap_write(i32 %36, i32 %37, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %14
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %60

45:                                               ; preds = %14
  %46 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %47 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ADXL372_FIFO_CTL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @regmap_write(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %45
  %57 = load %struct.adxl372_state*, %struct.adxl372_state** %3, align 8
  %58 = load i32, i32* @ADXL372_FULL_BW_MEASUREMENT, align 4
  %59 = call i32 @adxl372_set_op_mode(%struct.adxl372_state* %57, i32 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %54, %43, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @adxl372_set_op_mode(%struct.adxl372_state*, i32) #1

declare dso_local i32 @ADXL372_FIFO_CTL_FORMAT_MODE(i32) #1

declare dso_local i32 @ADXL372_FIFO_CTL_MODE_MODE(i32) #1

declare dso_local i32 @ADXL372_FIFO_CTL_SAMPLES_MODE(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
