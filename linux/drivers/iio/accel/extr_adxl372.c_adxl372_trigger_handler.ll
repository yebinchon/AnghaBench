; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adxl372.c_adxl372_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.adxl372_state = type { i64, i32*, i64, i32 }

@ADXL372_FIFO_BYPASSED = common dso_local global i64 0, align 8
@ADXL372_FIFO_DATA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @adxl372_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl372_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.adxl372_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %14, %struct.iio_poll_func** %5, align 8
  %15 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %16 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %15, i32 0, i32 0
  %17 = load %struct.iio_dev*, %struct.iio_dev** %16, align 8
  store %struct.iio_dev* %17, %struct.iio_dev** %6, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %19 = call %struct.adxl372_state* @iio_priv(%struct.iio_dev* %18)
  store %struct.adxl372_state* %19, %struct.adxl372_state** %7, align 8
  %20 = load %struct.adxl372_state*, %struct.adxl372_state** %7, align 8
  %21 = call i32 @adxl372_get_status(%struct.adxl372_state* %20, i32* %8, i32* %9, i32* %10)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %82

25:                                               ; preds = %2
  %26 = load %struct.adxl372_state*, %struct.adxl372_state** %7, align 8
  %27 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ADXL372_FIFO_BYPASSED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @ADXL372_STATUS_1_FIFO_FULL(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %81

35:                                               ; preds = %31
  %36 = load %struct.adxl372_state*, %struct.adxl372_state** %7, align 8
  %37 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.adxl372_state*, %struct.adxl372_state** %7, align 8
  %44 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ADXL372_FIFO_DATA, align 4
  %47 = load %struct.adxl372_state*, %struct.adxl372_state** %7, align 8
  %48 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @regmap_noinc_read(i32 %45, i32 %46, i32* %49, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %35
  br label %82

58:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %72, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = load %struct.adxl372_state*, %struct.adxl372_state** %7, align 8
  %66 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @iio_push_to_buffers(%struct.iio_dev* %64, i32* %70)
  br label %72

72:                                               ; preds = %63
  %73 = load %struct.adxl372_state*, %struct.adxl372_state** %7, align 8
  %74 = getelementptr inbounds %struct.adxl372_state, %struct.adxl372_state* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %11, align 4
  br label %59

80:                                               ; preds = %59
  br label %81

81:                                               ; preds = %80, %31, %25
  br label %82

82:                                               ; preds = %81, %57, %24
  %83 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %84 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @iio_trigger_notify_done(i32 %85)
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %87
}

declare dso_local %struct.adxl372_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adxl372_get_status(%struct.adxl372_state*, i32*, i32*, i32*) #1

declare dso_local i64 @ADXL372_STATUS_1_FIFO_FULL(i32) #1

declare dso_local i32 @regmap_noinc_read(i32, i32, i32*, i32) #1

declare dso_local i32 @iio_push_to_buffers(%struct.iio_dev*, i32*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
