; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_locomokbd.c_locomokbd_activate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_locomokbd.c_locomokbd_activate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOCOMO_KSC = common dso_local global i64 0, align 8
@LOCOMO_KIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @locomokbd_activate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locomokbd_activate_all(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @LOCOMO_KSC, align 8
  %6 = add i64 %4, %5
  %7 = call i32 @locomo_writel(i64 0, i64 %6)
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @LOCOMO_KIC, align 8
  %10 = add i64 %8, %9
  %11 = call i64 @locomo_readl(i64 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = and i64 %12, 65279
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @LOCOMO_KIC, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @locomo_writel(i64 %14, i64 %17)
  ret void
}

declare dso_local i32 @locomo_writel(i64, i64) #1

declare dso_local i64 @locomo_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
