; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp320x.c_mcp320x_channel_to_tx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mcp320x.c_mcp320x_channel_to_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mcp320x_channel_to_tx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp320x_channel_to_tx_data(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %34 [
    i32 133, label %10
    i32 130, label %10
    i32 132, label %22
    i32 129, label %22
    i32 131, label %22
    i32 128, label %22
  ]

10:                                               ; preds = %3, %3
  %11 = load i32, i32* %8, align 4
  %12 = shl i32 %11, 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = shl i32 %16, 3
  %18 = or i32 %12, %17
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 2
  %21 = or i32 %18, %20
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %3, %3, %3, %3
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 6
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = shl i32 %28, 5
  %30 = or i32 %24, %29
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %31, 2
  %33 = or i32 %30, %32
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %22, %10
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
