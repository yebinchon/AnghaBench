; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts5500.c_ts5500_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts5500.c_ts5500_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts5500_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid hwirq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ts5500_priv*)* @ts5500_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts5500_disable_irq(%struct.ts5500_priv* %0) #0 {
  %2 = alloca %struct.ts5500_priv*, align 8
  %3 = alloca i64, align 8
  store %struct.ts5500_priv* %0, %struct.ts5500_priv** %2, align 8
  %4 = load %struct.ts5500_priv*, %struct.ts5500_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.ts5500_priv*, %struct.ts5500_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @BIT(i32 7)
  %14 = call i32 @ts5500_clear_mask(i32 %13, i32 122)
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.ts5500_priv*, %struct.ts5500_priv** %2, align 8
  %17 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = call i32 @BIT(i32 7)
  %22 = call i32 @ts5500_clear_mask(i32 %21, i32 125)
  br label %41

23:                                               ; preds = %15
  %24 = load %struct.ts5500_priv*, %struct.ts5500_priv** %2, align 8
  %25 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 @BIT(i32 6)
  %30 = call i32 @ts5500_clear_mask(i32 %29, i32 125)
  br label %40

31:                                               ; preds = %23
  %32 = load %struct.ts5500_priv*, %struct.ts5500_priv** %2, align 8
  %33 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ts5500_priv*, %struct.ts5500_priv** %2, align 8
  %37 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %31, %28
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %41, %12
  %43 = load %struct.ts5500_priv*, %struct.ts5500_priv** %2, align 8
  %44 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %43, i32 0, i32 1
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ts5500_clear_mask(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
