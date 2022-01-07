; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.zpa2326_private = type { i32 }

@ZPA2326_CTRL_REG2_REG = common dso_local global i32 0, align 4
@ZPA2326_CTRL_REG2_SWRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to reset device (%d)\00", align 1
@ZPA2326_TPUP_USEC_MIN = common dso_local global i32 0, align 4
@ZPA2326_TPUP_USEC_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @zpa2326_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_reset_device(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %6 = call i64 @iio_priv(%struct.iio_dev* %5)
  %7 = inttoptr i64 %6 to %struct.zpa2326_private*
  %8 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ZPA2326_CTRL_REG2_REG, align 4
  %11 = load i32, i32* @ZPA2326_CTRL_REG2_SWRESET, align 4
  %12 = call i32 @regmap_write(i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @zpa2326_err(%struct.iio_dev* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @ZPA2326_TPUP_USEC_MIN, align 4
  %22 = load i32, i32* @ZPA2326_TPUP_USEC_MAX, align 4
  %23 = call i32 @usleep_range(i32 %21, i32 %22)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %25 = call i32 @zpa2326_dbg(%struct.iio_dev* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i64 @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_err(%struct.iio_dev*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @zpa2326_dbg(%struct.iio_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
