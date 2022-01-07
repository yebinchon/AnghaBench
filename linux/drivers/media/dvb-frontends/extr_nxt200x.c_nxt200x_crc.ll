; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt200x.c_nxt200x_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_nxt200x.c_nxt200x_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRC_CCIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @nxt200x_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt200x_crc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 255
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = shl i32 %9, 8
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %6, align 4
  %17 = xor i32 %15, %16
  %18 = and i32 %17, 32768
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = shl i32 %21, 1
  %23 = load i32, i32* @CRC_CCIT_MASK, align 4
  %24 = xor i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %14
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %11

34:                                               ; preds = %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
