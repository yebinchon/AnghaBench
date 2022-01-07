; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts5500.c_ts5500_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts5500.c_ts5500_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts5500_priv = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ts5500_priv*)* @ts5500_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts5500_enable_irq(%struct.ts5500_priv* %0) #0 {
  %2 = alloca %struct.ts5500_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ts5500_priv* %0, %struct.ts5500_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.ts5500_priv*, %struct.ts5500_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %5, i32 0, i32 1
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.ts5500_priv*, %struct.ts5500_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @BIT(i32 7)
  %15 = call i32 @ts5500_set_mask(i32 %14, i32 122)
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.ts5500_priv*, %struct.ts5500_priv** %2, align 8
  %18 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 @BIT(i32 7)
  %23 = call i32 @ts5500_set_mask(i32 %22, i32 125)
  br label %36

24:                                               ; preds = %16
  %25 = load %struct.ts5500_priv*, %struct.ts5500_priv** %2, align 8
  %26 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 @BIT(i32 6)
  %31 = call i32 @ts5500_set_mask(i32 %30, i32 125)
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %36, %13
  %38 = load %struct.ts5500_priv*, %struct.ts5500_priv** %2, align 8
  %39 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %38, i32 0, i32 1
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ts5500_set_mask(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
