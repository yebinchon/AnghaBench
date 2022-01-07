; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4371.c_adf4371_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4371.c_adf4371_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.adf4371_state = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"PLL un-locked\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@adf4371_pwrdown_ch = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@adf4371_ch_names = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*)* @adf4371_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf4371_read(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.adf4371_state*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = call %struct.adf4371_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.adf4371_state* %17, %struct.adf4371_state** %10, align 8
  store i64 0, i64* %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  switch i32 %19, label %87 [
    i32 129, label %20
    i32 128, label %46
    i32 130, label %78
  ]

20:                                               ; preds = %4
  %21 = load %struct.adf4371_state*, %struct.adf4371_state** %10, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @adf4371_pll_fract_n_get_rate(%struct.adf4371_state* %21, i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.adf4371_state*, %struct.adf4371_state** %10, align 8
  %27 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ADF4371_REG(i32 124)
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %12)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %90

34:                                               ; preds = %20
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.adf4371_state*, %struct.adf4371_state** %10, align 8
  %39 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %37, %34
  br label %90

46:                                               ; preds = %4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adf4371_pwrdown_ch, align 8
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %49 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %13, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adf4371_pwrdown_ch, align 8
  %55 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %56 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  %61 = load %struct.adf4371_state*, %struct.adf4371_state** %10, align 8
  %62 = getelementptr inbounds %struct.adf4371_state, %struct.adf4371_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @regmap_read(i32 %63, i32 %64, i32* %12)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %46
  br label %90

69:                                               ; preds = %46
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %11, align 8
  br label %90

78:                                               ; preds = %4
  %79 = load i8*, i8** %9, align 8
  %80 = load i8**, i8*** @adf4371_ch_names, align 8
  %81 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %82 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8*, i8** %80, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  store i32 %86, i32* %5, align 4
  br label %101

87:                                               ; preds = %4
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %15, align 4
  store i64 0, i64* %11, align 8
  br label %90

90:                                               ; preds = %87, %69, %68, %45, %33
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4
  br label %99

95:                                               ; preds = %90
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %97)
  br label %99

99:                                               ; preds = %95, %93
  %100 = phi i32 [ %94, %93 ], [ %98, %95 ]
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %78
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.adf4371_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @adf4371_pll_fract_n_get_rate(%struct.adf4371_state*, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ADF4371_REG(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
