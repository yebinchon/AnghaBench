; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_clear_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_clear_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.regmap = type { i32 }
%struct.zpa2326_private = type { %struct.regmap* }

@ZPA2326_STATUS_REG = common dso_local global i32 0, align 4
@ZPA2326_STATUS_FIFO_E = common dso_local global i32 0, align 4
@ZPA2326_PRESS_OUT_H_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"FIFO cleared\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to clear FIFO (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @zpa2326_clear_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_clear_fifo(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call i64 @iio_priv(%struct.iio_dev* %9)
  %11 = inttoptr i64 %10 to %struct.zpa2326_private*
  %12 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %11, i32 0, i32 0
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %2
  %17 = load %struct.regmap*, %struct.regmap** %6, align 8
  %18 = load i32, i32* @ZPA2326_STATUS_REG, align 4
  %19 = call i32 @regmap_read(%struct.regmap* %17, i32 %18, i32* %8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %61

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @ZPA2326_STATUS_FIFO_E, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %66

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %2
  br label %31

31:                                               ; preds = %52, %30
  %32 = load %struct.regmap*, %struct.regmap** %6, align 8
  %33 = load i32, i32* @ZPA2326_PRESS_OUT_H_REG, align 4
  %34 = call i32 @regmap_read(%struct.regmap* %32, i32 %33, i32* %8)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %61

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %5, align 4
  br label %52

44:                                               ; preds = %38
  %45 = load %struct.regmap*, %struct.regmap** %6, align 8
  %46 = load i32, i32* @ZPA2326_STATUS_REG, align 4
  %47 = call i32 @regmap_read(%struct.regmap* %45, i32 %46, i32* %8)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %61

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @ZPA2326_STATUS_FIFO_E, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %31, label %58

58:                                               ; preds = %52
  %59 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %60 = call i32 @zpa2326_dbg(%struct.iio_dev* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %66

61:                                               ; preds = %50, %37, %22
  %62 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @zpa2326_err(%struct.iio_dev* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %58, %28
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @zpa2326_dbg(%struct.iio_dev*, i8*) #1

declare dso_local i32 @zpa2326_err(%struct.iio_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
