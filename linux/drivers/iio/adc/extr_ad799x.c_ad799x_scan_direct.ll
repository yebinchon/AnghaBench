; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_scan_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_scan_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad799x_state = type { i32, i32, i32 }

@AD799X_CHANNEL_SHIFT = common dso_local global i32 0, align 4
@AD7997_8_READ_SINGLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad799x_state*, i32)* @ad799x_scan_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad799x_scan_direct(%struct.ad799x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad799x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad799x_state* %0, %struct.ad799x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ad799x_state*, %struct.ad799x_state** %4, align 8
  %8 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %30 [
    i32 135, label %10
    i32 131, label %10
    i32 128, label %10
    i32 134, label %19
    i32 133, label %19
    i32 132, label %19
    i32 130, label %24
    i32 129, label %24
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load %struct.ad799x_state*, %struct.ad799x_state** %4, align 8
  %12 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = load i32, i32* @AD799X_CHANNEL_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %13, %17
  store i32 %18, i32* %6, align 4
  br label %33

19:                                               ; preds = %2, %2, %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load i32, i32* @AD799X_CHANNEL_SHIFT, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %6, align 4
  br label %33

24:                                               ; preds = %2, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @AD799X_CHANNEL_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* @AD7997_8_READ_SINGLE, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %6, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %24, %19, %10
  %34 = load %struct.ad799x_state*, %struct.ad799x_state** %4, align 8
  %35 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @i2c_smbus_read_word_swapped(i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
