; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_write_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_write_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.opt3001 = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"can't find scale for %d.%06u\0A\00", align 1
@OPT3001_HIGH_LIMIT = common dso_local global i32 0, align 4
@OPT3001_LOW_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to write register %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @opt3001_write_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt3001_write_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.opt3001*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %23 = call %struct.opt3001* @iio_priv(%struct.iio_dev* %22)
  store %struct.opt3001* %23, %struct.opt3001** %16, align 8
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %100

29:                                               ; preds = %7
  %30 = load %struct.opt3001*, %struct.opt3001** %16, align 8
  %31 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %30, i32 0, i32 4
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.opt3001*, %struct.opt3001** %16, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @opt3001_find_scale(%struct.opt3001* %33, i32 %34, i32 %35, i32* %21)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.opt3001*, %struct.opt3001** %16, align 8
  %41 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %95

46:                                               ; preds = %29
  %47 = load i32, i32* %14, align 4
  %48 = mul nsw i32 %47, 1000
  %49 = load i32, i32* %15, align 4
  %50 = sdiv i32 %49, 1000
  %51 = add nsw i32 %48, %50
  %52 = sdiv i32 %51, 10
  %53 = load i32, i32* %21, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %21, align 4
  %56 = shl i32 %55, 12
  %57 = load i32, i32* %18, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %12, align 4
  switch i32 %59, label %76 [
    i32 128, label %60
    i32 129, label %68
  ]

60:                                               ; preds = %46
  %61 = load i32, i32* @OPT3001_HIGH_LIMIT, align 4
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load %struct.opt3001*, %struct.opt3001** %16, align 8
  %64 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %21, align 4
  %66 = load %struct.opt3001*, %struct.opt3001** %16, align 8
  %67 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %79

68:                                               ; preds = %46
  %69 = load i32, i32* @OPT3001_LOW_LIMIT, align 4
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load %struct.opt3001*, %struct.opt3001** %16, align 8
  %72 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %21, align 4
  %74 = load %struct.opt3001*, %struct.opt3001** %16, align 8
  %75 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  br label %79

76:                                               ; preds = %46
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %17, align 4
  br label %95

79:                                               ; preds = %68, %60
  %80 = load %struct.opt3001*, %struct.opt3001** %16, align 8
  %81 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @i2c_smbus_write_word_swapped(i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load %struct.opt3001*, %struct.opt3001** %16, align 8
  %90 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %20, align 4
  %93 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %95

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %88, %76, %39
  %96 = load %struct.opt3001*, %struct.opt3001** %16, align 8
  %97 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %96, i32 0, i32 4
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %17, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %95, %26
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local %struct.opt3001* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @opt3001_find_scale(%struct.opt3001*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
