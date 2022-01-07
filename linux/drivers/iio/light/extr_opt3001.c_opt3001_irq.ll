; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.opt3001 = type { i32, i32, i32, i32, i32, i32, i32 }

@OPT3001_CONFIGURATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read register %02x\0A\00", align 1
@OPT3001_CONFIGURATION_M_MASK = common dso_local global i32 0, align 4
@OPT3001_CONFIGURATION_M_CONTINUOUS = common dso_local global i32 0, align 4
@OPT3001_CONFIGURATION_FH = common dso_local global i32 0, align 4
@IIO_LIGHT = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@OPT3001_CONFIGURATION_FL = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@OPT3001_CONFIGURATION_CRF = common dso_local global i32 0, align 4
@OPT3001_RESULT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @opt3001_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt3001_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.opt3001*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_dev*
  store %struct.iio_dev* %10, %struct.iio_dev** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.opt3001* @iio_priv(%struct.iio_dev* %11)
  store %struct.opt3001* %12, %struct.opt3001** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.opt3001*, %struct.opt3001** %6, align 8
  %14 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.opt3001*, %struct.opt3001** %6, align 8
  %19 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.opt3001*, %struct.opt3001** %6, align 8
  %23 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %26 = call i32 @i2c_smbus_read_word_swapped(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.opt3001*, %struct.opt3001** %6, align 8
  %31 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OPT3001_CONFIGURATION, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %97

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @OPT3001_CONFIGURATION_M_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @OPT3001_CONFIGURATION_M_CONTINUOUS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @OPT3001_CONFIGURATION_FH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %48 = load i32, i32* @IIO_LIGHT, align 4
  %49 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %50 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %51 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %48, i32 0, i32 %49, i32 %50)
  %52 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %53 = call i32 @iio_get_time_ns(%struct.iio_dev* %52)
  %54 = call i32 @iio_push_event(%struct.iio_dev* %47, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @OPT3001_CONFIGURATION_FL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %62 = load i32, i32* @IIO_LIGHT, align 4
  %63 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %64 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %65 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %62, i32 0, i32 %63, i32 %64)
  %66 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %67 = call i32 @iio_get_time_ns(%struct.iio_dev* %66)
  %68 = call i32 @iio_push_event(%struct.iio_dev* %61, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %60, %55
  br label %96

70:                                               ; preds = %35
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @OPT3001_CONFIGURATION_CRF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  %76 = load %struct.opt3001*, %struct.opt3001** %6, align 8
  %77 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @OPT3001_RESULT, align 4
  %80 = call i32 @i2c_smbus_read_word_swapped(i32 %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.opt3001*, %struct.opt3001** %6, align 8
  %85 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @OPT3001_RESULT, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %97

89:                                               ; preds = %75
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.opt3001*, %struct.opt3001** %6, align 8
  %92 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.opt3001*, %struct.opt3001** %6, align 8
  %94 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  store i32 1, i32* %8, align 4
  br label %95

95:                                               ; preds = %89, %70
  br label %96

96:                                               ; preds = %95, %69
  br label %97

97:                                               ; preds = %96, %83, %29
  %98 = load %struct.opt3001*, %struct.opt3001** %6, align 8
  %99 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load %struct.opt3001*, %struct.opt3001** %6, align 8
  %104 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %103, i32 0, i32 3
  %105 = call i32 @mutex_unlock(i32* %104)
  br label %106

106:                                              ; preds = %102, %97
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.opt3001*, %struct.opt3001** %6, align 8
  %111 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %110, i32 0, i32 2
  %112 = call i32 @wake_up(i32* %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %114
}

declare dso_local %struct.opt3001* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
