; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5421.c_ad5421_fault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5421.c_ad5421_fault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad5421_state = type { i32 }

@AD5421_REG_FAULT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@AD5421_FAULT_OVER_CURRENT = common dso_local global i32 0, align 4
@IIO_CURRENT = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@AD5421_FAULT_UNDER_CURRENT = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@AD5421_FAULT_TEMP_OVER_140 = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i32 0, align 4
@IIO_EV_TYPE_MAG = common dso_local global i32 0, align 4
@AD5421_FAULT_TRIGGER_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ad5421_fault_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5421_fault_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ad5421_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iio_dev*
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.ad5421_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.ad5421_state* %14, %struct.ad5421_state** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = load i32, i32* @AD5421_REG_FAULT, align 4
  %17 = call i32 @ad5421_read(%struct.iio_dev* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %100

22:                                               ; preds = %2
  %23 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %24 = call i32 @ad5421_update_ctrl(%struct.iio_dev* %23, i32 0, i32 0)
  br label %25

25:                                               ; preds = %93, %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 65535
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = xor i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.ad5421_state*, %struct.ad5421_state** %7, align 8
  %36 = getelementptr inbounds %struct.ad5421_state, %struct.ad5421_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @AD5421_FAULT_OVER_CURRENT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %29
  %45 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %46 = load i32, i32* @IIO_CURRENT, align 4
  %47 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %48 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %49 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %46, i32 0, i32 %47, i32 %48)
  %50 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %51 = call i32 @iio_get_time_ns(%struct.iio_dev* %50)
  %52 = call i32 @iio_push_event(%struct.iio_dev* %45, i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %44, %29
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @AD5421_FAULT_UNDER_CURRENT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %60 = load i32, i32* @IIO_CURRENT, align 4
  %61 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %62 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %63 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %60, i32 0, i32 %61, i32 %62)
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = call i32 @iio_get_time_ns(%struct.iio_dev* %64)
  %66 = call i32 @iio_push_event(%struct.iio_dev* %59, i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %58, %53
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @AD5421_FAULT_TEMP_OVER_140, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %74 = load i32, i32* @IIO_TEMP, align 4
  %75 = load i32, i32* @IIO_EV_TYPE_MAG, align 4
  %76 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %77 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %74, i32 0, i32 %75, i32 %76)
  %78 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %79 = call i32 @iio_get_time_ns(%struct.iio_dev* %78)
  %80 = call i32 @iio_push_event(%struct.iio_dev* %73, i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %72, %67
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %9, align 4
  %83 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %84 = load i32, i32* @AD5421_REG_FAULT, align 4
  %85 = call i32 @ad5421_read(%struct.iio_dev* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @AD5421_FAULT_TRIGGER_IRQ, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = call i32 @msleep(i32 1000)
  br label %92

92:                                               ; preds = %90, %81
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @AD5421_FAULT_TRIGGER_IRQ, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %25, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %20
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.ad5421_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad5421_read(%struct.iio_dev*, i32) #1

declare dso_local i32 @ad5421_update_ctrl(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
