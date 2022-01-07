; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_locomokbd.c_locomokbd_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_locomokbd.c_locomokbd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locomokbd = type { i64 }

@LOCOMO_KIC = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @locomokbd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locomokbd_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.locomokbd*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.locomokbd*
  store %struct.locomokbd* %9, %struct.locomokbd** %6, align 8
  %10 = load %struct.locomokbd*, %struct.locomokbd** %6, align 8
  %11 = getelementptr inbounds %struct.locomokbd, %struct.locomokbd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LOCOMO_KIC, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @locomo_readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, -257
  %24 = load %struct.locomokbd*, %struct.locomokbd** %6, align 8
  %25 = getelementptr inbounds %struct.locomokbd, %struct.locomokbd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LOCOMO_KIC, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @locomo_writel(i32 %23, i64 %28)
  %30 = call i32 @udelay(i32 100)
  %31 = load %struct.locomokbd*, %struct.locomokbd** %6, align 8
  %32 = call i32 @locomokbd_scankeyboard(%struct.locomokbd* %31)
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %21, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @locomo_readl(i64) #1

declare dso_local i32 @locomo_writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @locomokbd_scankeyboard(%struct.locomokbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
