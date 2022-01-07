; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_write_samp_freq_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_write_samp_freq_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpr0521_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RPR0521_REG_MODE_CTRL = common dso_local global i32 0, align 4
@RPR0521_MODE_MEAS_TIME_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpr0521_data*, i32, i32, i32)* @rpr0521_write_samp_freq_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpr0521_write_samp_freq_common(%struct.rpr0521_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpr0521_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rpr0521_data* %0, %struct.rpr0521_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %21 [
    i32 0, label %12
    i32 2, label %13
    i32 10, label %20
  ]

12:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %24

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 500000
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %32

19:                                               ; preds = %13
  store i32 11, i32* %10, align 4
  br label %24

20:                                               ; preds = %4
  store i32 6, i32* %10, align 4
  br label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %20, %19, %12
  %25 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %26 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RPR0521_REG_MODE_CTRL, align 4
  %29 = load i32, i32* @RPR0521_MODE_MEAS_TIME_MASK, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %24, %21, %16
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
