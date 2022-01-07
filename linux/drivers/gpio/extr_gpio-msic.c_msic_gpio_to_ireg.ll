; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-msic.c_msic_gpio_to_ireg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-msic.c_msic_gpio_to_ireg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSIC_NUM_GPIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INTEL_MSIC_GPIO0LV0CTLI = common dso_local global i32 0, align 4
@INTEL_MSIC_GPIO1LV0CTLI = common dso_local global i32 0, align 4
@INTEL_MSIC_GPIO0HV0CTLI = common dso_local global i32 0, align 4
@INTEL_MSIC_GPIO1HV0CTLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @msic_gpio_to_ireg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msic_gpio_to_ireg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MSIC_NUM_GPIO, align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %38

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* @INTEL_MSIC_GPIO0LV0CTLI, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sub i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %38

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = icmp ult i32 %18, 16
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* @INTEL_MSIC_GPIO1LV0CTLI, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sub i32 %21, %22
  %24 = add i32 %23, 8
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = icmp ult i32 %26, 20
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* @INTEL_MSIC_GPIO0HV0CTLI, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sub i32 %29, %30
  %32 = add i32 %31, 16
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %25
  %34 = load i32, i32* @INTEL_MSIC_GPIO1HV0CTLI, align 4
  %35 = load i32, i32* %3, align 4
  %36 = sub i32 %34, %35
  %37 = add i32 %36, 20
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %28, %20, %13, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
