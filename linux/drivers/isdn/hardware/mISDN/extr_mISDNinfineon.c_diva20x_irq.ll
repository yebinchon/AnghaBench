; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_diva20x_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_diva20x_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_hw = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PITA_INT0_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@irqloops = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @diva20x_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diva20x_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inf_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.inf_hw*
  store %struct.inf_hw* %9, %struct.inf_hw** %6, align 8
  %10 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %11 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %14 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @readb(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PITA_INT0_STATUS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %24 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %2
  %28 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %29 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %33 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %32, i32 0, i32 2
  %34 = load i32, i32* @irqloops, align 4
  %35 = call i32 @mISDNipac_irq(i32* %33, i32 %34)
  %36 = load i32, i32* @PITA_INT0_STATUS, align 4
  %37 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %38 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @writeb(i32 %36, i32 %40)
  %42 = load %struct.inf_hw*, %struct.inf_hw** %6, align 8
  %43 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %27, %22
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mISDNipac_irq(i32*, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
