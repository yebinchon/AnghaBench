; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3323.c_cm3323_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3323.c_cm3323_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.cm3323_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CM3323_CMD_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error reading reg_conf\0A\00", align 1
@CM3323_CONF_SD_BIT = common dso_local global i32 0, align 4
@CM3323_CONF_AF_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error writing reg_conf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @cm3323_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm3323_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm3323_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.cm3323_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.cm3323_data* %7, %struct.cm3323_data** %5, align 8
  %8 = load %struct.cm3323_data*, %struct.cm3323_data** %5, align 8
  %9 = getelementptr inbounds %struct.cm3323_data, %struct.cm3323_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load i32, i32* @CM3323_CMD_CONF, align 4
  %12 = call i32 @i2c_smbus_read_word_data(%struct.TYPE_3__* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.cm3323_data*, %struct.cm3323_data** %5, align 8
  %17 = getelementptr inbounds %struct.cm3323_data, %struct.cm3323_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %48

22:                                               ; preds = %1
  %23 = load i32, i32* @CM3323_CONF_SD_BIT, align 4
  %24 = load i32, i32* @CM3323_CONF_AF_BIT, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.cm3323_data*, %struct.cm3323_data** %5, align 8
  %30 = getelementptr inbounds %struct.cm3323_data, %struct.cm3323_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* @CM3323_CMD_CONF, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @i2c_smbus_write_word_data(%struct.TYPE_3__* %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %22
  %38 = load %struct.cm3323_data*, %struct.cm3323_data** %5, align 8
  %39 = getelementptr inbounds %struct.cm3323_data, %struct.cm3323_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %22
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.cm3323_data*, %struct.cm3323_data** %5, align 8
  %47 = getelementptr inbounds %struct.cm3323_data, %struct.cm3323_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %37, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.cm3323_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_word_data(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
