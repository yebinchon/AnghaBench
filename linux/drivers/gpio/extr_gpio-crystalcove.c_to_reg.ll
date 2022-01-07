; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYSTALCOVE_GPIO_NUM = common dso_local global i32 0, align 4
@GPIOPANELCTL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CTRL_IN = common dso_local global i32 0, align 4
@GPIO0P0CTLI = common dso_local global i32 0, align 4
@GPIO1P0CTLI = common dso_local global i32 0, align 4
@GPIO0P0CTLO = common dso_local global i32 0, align 4
@GPIO1P0CTLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @CRYSTALCOVE_GPIO_NUM, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %14 [
    i32 94, label %12
  ]

12:                                               ; preds = %10
  %13 = load i32, i32* @GPIOPANELCTL, align 4
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %10
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @CTRL_IN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @GPIO0P0CTLI, align 4
  store i32 %25, i32* %6, align 4
  br label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @GPIO1P0CTLI, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %37

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @GPIO0P0CTLO, align 4
  store i32 %33, i32* %6, align 4
  br label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @GPIO1P0CTLO, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = srem i32 %39, 8
  %41 = add nsw i32 %38, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %14, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
