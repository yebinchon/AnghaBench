; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_read_samp_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_read_samp_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.rpr0521_data = type { i32 }

@RPR0521_REG_MODE_CTRL = common dso_local global i32 0, align 4
@RPR0521_MODE_MEAS_TIME_MASK = common dso_local global i32 0, align 4
@rpr0521_samp_freq_i = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpr0521_data*, i32, i32*, i32*)* @rpr0521_read_samp_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpr0521_read_samp_freq(%struct.rpr0521_data* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpr0521_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rpr0521_data* %0, %struct.rpr0521_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %13 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RPR0521_REG_MODE_CTRL, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %67

21:                                               ; preds = %4
  %22 = load i32, i32* @RPR0521_MODE_MEAS_TIME_MASK, align 4
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rpr0521_samp_freq_i, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %26)
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %67

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %64 [
    i32 129, label %34
    i32 128, label %49
  ]

34:                                               ; preds = %32
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rpr0521_samp_freq_i, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rpr0521_samp_freq_i, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %67

49:                                               ; preds = %32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rpr0521_samp_freq_i, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rpr0521_samp_freq_i, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %67

64:                                               ; preds = %32
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %49, %34, %29, %19
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
