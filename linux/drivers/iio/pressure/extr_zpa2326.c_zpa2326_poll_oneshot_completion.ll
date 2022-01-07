; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_poll_oneshot_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_poll_oneshot_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.regmap = type { i32 }
%struct.zpa2326_private = type { %struct.regmap* }

@jiffies = common dso_local global i64 0, align 8
@ZPA2326_CONVERSION_JIFFIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"polling for one shot completion\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@ZPA2326_CTRL_REG0_REG = common dso_local global i32 0, align 4
@ZPA2326_CTRL_REG0_ONE_SHOT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@ZPA2326_STATUS_REG = common dso_local global i32 0, align 4
@ZPA2326_STATUS_P_DA = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to poll one shot completion (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @zpa2326_poll_oneshot_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_poll_oneshot_completion(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* @ZPA2326_CONVERSION_JIFFIES, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = call i64 @iio_priv(%struct.iio_dev* %11)
  %13 = inttoptr i64 %12 to %struct.zpa2326_private*
  %14 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %13, i32 0, i32 0
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %5, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %17 = call i32 @zpa2326_dbg(%struct.iio_dev* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 @msleep_interruptible(i32 100)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ERESTARTSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %45
  %25 = load %struct.regmap*, %struct.regmap** %5, align 8
  %26 = load i32, i32* @ZPA2326_CTRL_REG0_REG, align 4
  %27 = call i32 @regmap_read(%struct.regmap* %25, i32 %26, i32* %6)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %63

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ZPA2326_CTRL_REG0_ONE_SHOT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %47

37:                                               ; preds = %31
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @time_after(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ETIME, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %63

45:                                               ; preds = %37
  %46 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %24

47:                                               ; preds = %36
  %48 = load %struct.regmap*, %struct.regmap** %5, align 8
  %49 = load i32, i32* @ZPA2326_STATUS_REG, align 4
  %50 = call i32 @regmap_read(%struct.regmap* %48, i32 %49, i32* %6)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %63

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ZPA2326_STATUS_P_DA, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENODATA, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %63

62:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %68

63:                                               ; preds = %59, %53, %42, %30
  %64 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @zpa2326_warn(%struct.iio_dev* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %62, %20
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_dbg(%struct.iio_dev*, i8*) #1

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @zpa2326_warn(%struct.iio_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
