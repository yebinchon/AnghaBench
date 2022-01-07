; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_irq_thread_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_irq_thread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.bmc150_accel_data = type { i32, i32, i64, i64 }
%struct.device = type { i32 }

@BMC150_ACCEL_FIFO_LENGTH = common dso_local global i32 0, align 4
@BMC150_ACCEL_REG_INT_RST_LATCH = common dso_local global i32 0, align 4
@BMC150_ACCEL_INT_MODE_LATCH_INT = common dso_local global i32 0, align 4
@BMC150_ACCEL_INT_MODE_LATCH_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error writing reg_int_rst_latch\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bmc150_accel_irq_thread_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_irq_thread_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.bmc150_accel_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iio_dev*
  store %struct.iio_dev* %11, %struct.iio_dev** %5, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev* %12)
  store %struct.bmc150_accel_data* %13, %struct.bmc150_accel_data** %6, align 8
  %14 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %6, align 8
  %15 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device* @regmap_get_device(i32 %16)
  store %struct.device* %17, %struct.device** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %6, align 8
  %19 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %6, align 8
  %22 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %27 = load i32, i32* @BMC150_ACCEL_FIFO_LENGTH, align 4
  %28 = call i32 @__bmc150_accel_fifo_flush(%struct.iio_dev* %26, i32 %27, i32 1)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %25
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %6, align 8
  %35 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %40 = call i32 @bmc150_accel_handle_roc_event(%struct.iio_dev* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %38
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %6, align 8
  %50 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BMC150_ACCEL_REG_INT_RST_LATCH, align 4
  %53 = load i32, i32* @BMC150_ACCEL_INT_MODE_LATCH_INT, align 4
  %54 = load i32, i32* @BMC150_ACCEL_INT_MODE_LATCH_RESET, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @regmap_write(i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %48
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %63, i32* %9, align 4
  br label %66

64:                                               ; preds = %45
  %65 = load i32, i32* @IRQ_NONE, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %6, align 8
  %68 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__bmc150_accel_fifo_flush(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @bmc150_accel_handle_roc_event(%struct.iio_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
