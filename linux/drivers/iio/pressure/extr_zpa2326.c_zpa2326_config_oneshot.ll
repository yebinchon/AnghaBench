; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_config_oneshot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_config_oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }
%struct.zpa2326_frequency = type { i32, i32 }
%struct.zpa2326_private = type { %struct.regmap* }

@ZPA2326_CTRL_REG3_REG = common dso_local global i32 0, align 4
@ZPA2326_CTRL_REG1_REG = common dso_local global i32 0, align 4
@ZPA2326_CTRL_REG1_MASK_DATA_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"failed to setup one shot mode (%d)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"one shot mode setup @%dHz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @zpa2326_config_oneshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_config_oneshot(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.zpa2326_frequency*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call i64 @iio_priv(%struct.iio_dev* %9)
  %11 = inttoptr i64 %10 to %struct.zpa2326_private*
  %12 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %11, i32 0, i32 0
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %6, align 8
  %14 = call %struct.zpa2326_frequency* (...) @zpa2326_highest_frequency()
  store %struct.zpa2326_frequency* %14, %struct.zpa2326_frequency** %7, align 8
  %15 = load %struct.regmap*, %struct.regmap** %6, align 8
  %16 = load i32, i32* @ZPA2326_CTRL_REG3_REG, align 4
  %17 = load %struct.zpa2326_frequency*, %struct.zpa2326_frequency** %7, align 8
  %18 = getelementptr inbounds %struct.zpa2326_frequency, %struct.zpa2326_frequency* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_write(%struct.regmap* %15, i32 %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.regmap*, %struct.regmap** %6, align 8
  %30 = load i32, i32* @ZPA2326_CTRL_REG1_REG, align 4
  %31 = load i64, i64* @ZPA2326_CTRL_REG1_MASK_DATA_READY, align 8
  %32 = xor i64 %31, -1
  %33 = trunc i64 %32 to i32
  %34 = call i32 @regmap_write(%struct.regmap* %29, i32 %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %52

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %25
  %47 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %48 = load %struct.zpa2326_frequency*, %struct.zpa2326_frequency** %7, align 8
  %49 = getelementptr inbounds %struct.zpa2326_frequency, %struct.zpa2326_frequency* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @zpa2326_dbg(%struct.iio_dev* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %37, %23
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.zpa2326_frequency* @zpa2326_highest_frequency(...) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @zpa2326_dbg(%struct.iio_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
