; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tmp007.c_tmp007_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tmp007_data = type { i32 }

@TMP007_STATUS = common dso_local global i32 0, align 4
@TMP007_STATUS_OHF = common dso_local global i32 0, align 4
@TMP007_STATUS_OLF = common dso_local global i32 0, align 4
@TMP007_STATUS_LHF = common dso_local global i32 0, align 4
@TMP007_STATUS_LLF = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i32 0, align 4
@IIO_MOD_TEMP_OBJECT = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@IIO_MOD_TEMP_AMBIENT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tmp007_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp007_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.tmp007_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.iio_dev*
  store %struct.iio_dev* %10, %struct.iio_dev** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = call %struct.tmp007_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.tmp007_data* %12, %struct.tmp007_data** %7, align 8
  %13 = load %struct.tmp007_data*, %struct.tmp007_data** %7, align 8
  %14 = getelementptr inbounds %struct.tmp007_data, %struct.tmp007_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TMP007_STATUS, align 4
  %17 = call i32 @i2c_smbus_read_word_swapped(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @TMP007_STATUS_OHF, align 4
  %23 = load i32, i32* @TMP007_STATUS_OLF, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @TMP007_STATUS_LHF, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @TMP007_STATUS_LLF, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %21, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20, %2
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %95

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @TMP007_STATUS_OHF, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %40 = load i32, i32* @IIO_TEMP, align 4
  %41 = load i32, i32* @IIO_MOD_TEMP_OBJECT, align 4
  %42 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %43 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %44 = call i32 @IIO_MOD_EVENT_CODE(i32 %40, i32 0, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %46 = call i32 @iio_get_time_ns(%struct.iio_dev* %45)
  %47 = call i32 @iio_push_event(%struct.iio_dev* %39, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %38, %33
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @TMP007_STATUS_OLF, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %55 = load i32, i32* @IIO_TEMP, align 4
  %56 = load i32, i32* @IIO_MOD_TEMP_OBJECT, align 4
  %57 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %58 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %59 = call i32 @IIO_MOD_EVENT_CODE(i32 %55, i32 0, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %61 = call i32 @iio_get_time_ns(%struct.iio_dev* %60)
  %62 = call i32 @iio_push_event(%struct.iio_dev* %54, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %53, %48
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @TMP007_STATUS_LHF, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %70 = load i32, i32* @IIO_TEMP, align 4
  %71 = load i32, i32* @IIO_MOD_TEMP_AMBIENT, align 4
  %72 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %73 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %74 = call i32 @IIO_MOD_EVENT_CODE(i32 %70, i32 0, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %76 = call i32 @iio_get_time_ns(%struct.iio_dev* %75)
  %77 = call i32 @iio_push_event(%struct.iio_dev* %69, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %68, %63
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @TMP007_STATUS_LLF, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %85 = load i32, i32* @IIO_TEMP, align 4
  %86 = load i32, i32* @IIO_MOD_TEMP_AMBIENT, align 4
  %87 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %88 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %89 = call i32 @IIO_MOD_EVENT_CODE(i32 %85, i32 0, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %91 = call i32 @iio_get_time_ns(%struct.iio_dev* %90)
  %92 = call i32 @iio_push_event(%struct.iio_dev* %84, i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %83, %78
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %31
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.tmp007_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_MOD_EVENT_CODE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
