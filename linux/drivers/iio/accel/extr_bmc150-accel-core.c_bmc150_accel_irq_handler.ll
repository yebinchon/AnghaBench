; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.bmc150_accel_data = type { i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@BMC150_ACCEL_TRIGGERS = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bmc150_accel_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.bmc150_accel_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.iio_dev*
  store %struct.iio_dev* %11, %struct.iio_dev** %6, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev* %12)
  store %struct.bmc150_accel_data* %13, %struct.bmc150_accel_data** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %7, align 8
  %15 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %7, align 8
  %18 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %20 = call i32 @iio_get_time_ns(%struct.iio_dev* %19)
  %21 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %7, align 8
  %22 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %48, %2
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @BMC150_ACCEL_TRIGGERS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %7, align 8
  %29 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %7, align 8
  %39 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @iio_trigger_poll(i32 %45)
  store i32 1, i32* %8, align 4
  br label %51

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %23

51:                                               ; preds = %37, %23
  %52 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %7, align 8
  %53 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %7, align 8
  %58 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %62, i32* %3, align 4
  br label %70

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @IRQ_NONE, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %66, %61
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
