; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_priv_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_priv_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_gpio_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to %s wake-up interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmstb_gpio_priv*, i32)* @brcmstb_gpio_priv_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_gpio_priv_set_wake(%struct.brcmstb_gpio_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmstb_gpio_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcmstb_gpio_priv* %0, %struct.brcmstb_gpio_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %3, align 8
  %10 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @enable_irq_wake(i32 %11)
  store i32 %12, i32* %5, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %3, align 8
  %15 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @disable_irq_wake(i32 %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %3, align 8
  %23 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
