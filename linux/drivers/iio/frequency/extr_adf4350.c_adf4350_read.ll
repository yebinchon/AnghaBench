; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.adf4350_state = type { i32, i32, i32, i32, i64, i64, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"PLL un-locked\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ADF4350_REG2 = common dso_local global i64 0, align 8
@ADF4350_REG2_POWER_DOWN_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*)* @adf4350_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf4350_read(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.adf4350_state*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.adf4350_state* @iio_priv(%struct.iio_dev* %12)
  store %struct.adf4350_state* %13, %struct.adf4350_state** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  switch i32 %18, label %106 [
    i32 131, label %19
    i32 130, label %72
    i32 129, label %88
    i32 128, label %92
  ]

19:                                               ; preds = %4
  %20 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %21 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %24 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %28 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %33 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 %31, %35
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %39 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %42 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 1, %43
  %45 = mul nsw i32 %40, %44
  %46 = call i32 @do_div(i64 %37, i32 %45)
  %47 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %48 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %47, i32 0, i32 9
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gpio_is_valid(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %19
  %55 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %56 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %55, i32 0, i32 9
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gpio_get_value(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %54
  %63 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %64 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %63, i32 0, i32 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %62, %54
  br label %71

71:                                               ; preds = %70, %19
  br label %109

72:                                               ; preds = %4
  %73 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %74 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %79 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @clk_get_rate(i32 %80)
  %82 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %83 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %82, i32 0, i32 4
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %77, %72
  %85 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %86 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %10, align 8
  br label %109

88:                                               ; preds = %4
  %89 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %90 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %10, align 8
  br label %109

92:                                               ; preds = %4
  %93 = load %struct.adf4350_state*, %struct.adf4350_state** %9, align 8
  %94 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %93, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @ADF4350_REG2, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ADF4350_REG2_POWER_DOWN_EN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %10, align 8
  br label %109

106:                                              ; preds = %4
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %11, align 4
  store i64 0, i64* %10, align 8
  br label %109

109:                                              ; preds = %106, %92, %88, %84, %71
  %110 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %111 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %11, align 4
  br label %121

117:                                              ; preds = %109
  %118 = load i8*, i8** %8, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @sprintf(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %119)
  br label %121

121:                                              ; preds = %117, %115
  %122 = phi i32 [ %116, %115 ], [ %120, %117 ]
  ret i32 %122
}

declare dso_local %struct.adf4350_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
