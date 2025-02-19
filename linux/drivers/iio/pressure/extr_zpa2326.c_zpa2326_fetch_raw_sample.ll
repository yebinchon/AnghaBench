; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_fetch_raw_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_fetch_raw_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.regmap = type { i32 }
%struct.zpa2326_private = type { %struct.regmap* }

@.str = private unnamed_addr constant [29 x i8] c"fetching raw pressure sample\00", align 1
@ZPA2326_PRESS_OUT_XL_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to fetch pressure (%d)\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"fetching raw temperature sample\00", align 1
@ZPA2326_TEMP_OUT_L_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to fetch temperature (%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32*)* @zpa2326_fetch_raw_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_fetch_raw_sample(%struct.iio_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call i64 @iio_priv(%struct.iio_dev* %10)
  %12 = inttoptr i64 %11 to %struct.zpa2326_private*
  %13 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %12, i32 0, i32 0
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %66 [
    i32 129, label %16
    i32 128, label %46
  ]

16:                                               ; preds = %3
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = call i32 @zpa2326_dbg(%struct.iio_dev* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.regmap*, %struct.regmap** %8, align 8
  %20 = load i32, i32* @ZPA2326_PRESS_OUT_XL_REG, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @regmap_bulk_read(%struct.regmap* %19, i32 %20, i32* %21, i32 3)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @zpa2326_warn(%struct.iio_dev* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %69

30:                                               ; preds = %16
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %34, %38
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %45, i32* %4, align 4
  br label %69

46:                                               ; preds = %3
  %47 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %48 = call i32 @zpa2326_dbg(%struct.iio_dev* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.regmap*, %struct.regmap** %8, align 8
  %50 = load i32, i32* @ZPA2326_TEMP_OUT_L_REG, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @regmap_bulk_read(%struct.regmap* %49, i32 %50, i32* %51, i32 2)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @zpa2326_warn(%struct.iio_dev* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %69

60:                                               ; preds = %46
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @le16_to_cpup(i32* %61)
  %63 = trunc i64 %62 to i32
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %3
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %60, %55, %30, %25
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_dbg(%struct.iio_dev*, i8*) #1

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i32, i32*, i32) #1

declare dso_local i32 @zpa2326_warn(%struct.iio_dev*, i8*, i32) #1

declare dso_local i64 @le16_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
