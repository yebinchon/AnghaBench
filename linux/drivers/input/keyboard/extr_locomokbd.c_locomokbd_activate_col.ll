; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_locomokbd.c_locomokbd_activate_col.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_locomokbd.c_locomokbd_activate_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOCOMO_KSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @locomokbd_activate_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locomokbd_activate_col(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = shl i32 1, %7
  %9 = xor i32 %8, -1
  %10 = and i32 255, %9
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %5, align 2
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i32
  %14 = shl i32 %13, 8
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = add nsw i32 %14, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %6, align 2
  %19 = load i16, i16* %6, align 2
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @LOCOMO_KSC, align 8
  %22 = add i64 %20, %21
  %23 = call i32 @locomo_writel(i16 zeroext %19, i64 %22)
  ret void
}

declare dso_local i32 @locomo_writel(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
