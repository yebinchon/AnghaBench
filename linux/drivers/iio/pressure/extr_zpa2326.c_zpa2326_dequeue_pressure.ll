; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_dequeue_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_dequeue_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.regmap = type { i32 }
%struct.zpa2326_private = type { %struct.regmap* }

@ZPA2326_STATUS_REG = common dso_local global i32 0, align 4
@ZPA2326_STATUS_P_OR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"FIFO overflow\00", align 1
@ZPA2326_PRESS_OUT_XL_REG = common dso_local global i32 0, align 4
@ZPA2326_STATUS_FIFO_E = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cleared %d FIFO entries\00", align 1
@ZPA2326_FIFO_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64*)* @zpa2326_dequeue_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_dequeue_pressure(%struct.iio_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call i64 @iio_priv(%struct.iio_dev* %10)
  %12 = inttoptr i64 %11 to %struct.zpa2326_private*
  %13 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %12, i32 0, i32 0
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %6, align 8
  store i32 -1, i32* %9, align 4
  %15 = load %struct.regmap*, %struct.regmap** %6, align 8
  %16 = load i32, i32* @ZPA2326_STATUS_REG, align 4
  %17 = call i32 @regmap_read(%struct.regmap* %15, i32 %16, i32* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %77

22:                                               ; preds = %2
  %23 = load i64*, i64** %5, align 8
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ZPA2326_STATUS_P_OR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %30 = call i32 @zpa2326_warn(%struct.iio_dev* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.regmap*, %struct.regmap** %6, align 8
  %32 = load i32, i32* @ZPA2326_PRESS_OUT_XL_REG, align 4
  %33 = load i64*, i64** %5, align 8
  %34 = call i32 @regmap_bulk_read(%struct.regmap* %31, i32 %32, i64* %33, i32 3)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %77

39:                                               ; preds = %28
  %40 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %41 = call i32 @zpa2326_clear_fifo(%struct.iio_dev* %40, i64 15)
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %63, %42
  %44 = load %struct.regmap*, %struct.regmap** %6, align 8
  %45 = load i32, i32* @ZPA2326_PRESS_OUT_XL_REG, align 4
  %46 = load i64*, i64** %5, align 8
  %47 = call i32 @regmap_bulk_read(%struct.regmap* %44, i32 %45, i64* %46, i32 3)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %77

52:                                               ; preds = %43
  %53 = load %struct.regmap*, %struct.regmap** %6, align 8
  %54 = load i32, i32* @ZPA2326_STATUS_REG, align 4
  %55 = call i32 @regmap_read(%struct.regmap* %53, i32 %54, i32* %7)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %77

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @ZPA2326_STATUS_FIFO_E, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %43, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @zpa2326_dbg(%struct.iio_dev* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %69
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %58, %50, %39, %37, %20
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @zpa2326_warn(%struct.iio_dev*, i8*) #1

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i32, i64*, i32) #1

declare dso_local i32 @zpa2326_clear_fifo(%struct.iio_dev*, i64) #1

declare dso_local i32 @zpa2326_dbg(%struct.iio_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
