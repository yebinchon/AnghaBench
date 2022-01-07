; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3323.c_cm3323_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3323.c_cm3323_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.cm3323_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CM3323_CMD_CONF = common dso_local global i32 0, align 4
@CM3323_CONF_SD_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error writing reg_conf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cm3323_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm3323_disable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.cm3323_data*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.iio_dev*
  store %struct.iio_dev* %7, %struct.iio_dev** %4, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = call %struct.cm3323_data* @iio_priv(%struct.iio_dev* %8)
  store %struct.cm3323_data* %9, %struct.cm3323_data** %5, align 8
  %10 = load %struct.cm3323_data*, %struct.cm3323_data** %5, align 8
  %11 = getelementptr inbounds %struct.cm3323_data, %struct.cm3323_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* @CM3323_CMD_CONF, align 4
  %14 = load i32, i32* @CM3323_CONF_SD_BIT, align 4
  %15 = call i32 @i2c_smbus_write_word_data(%struct.TYPE_2__* %12, i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.cm3323_data*, %struct.cm3323_data** %5, align 8
  %20 = getelementptr inbounds %struct.cm3323_data, %struct.cm3323_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.cm3323_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_word_data(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
