; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_speedfax.c_release_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_speedfax.c_release_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfax_hw = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32 (%struct.TYPE_6__*)* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)* }

@card_lock = common dso_local global i32 0, align 4
@sfax_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfax_hw*)* @release_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_card(%struct.sfax_hw* %0) #0 {
  %2 = alloca %struct.sfax_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.sfax_hw* %0, %struct.sfax_hw** %2, align 8
  %4 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %5 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %4, i32 0, i32 6
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @spin_lock_irqsave(i32* %5, i32 %6)
  %8 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %9 = call i32 @disable_hwirq(%struct.sfax_hw* %8)
  %10 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %11 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %10, i32 0, i32 6
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @spin_unlock_irqrestore(i32* %11, i32 %12)
  %14 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %15 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %16, align 8
  %18 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %19 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %18, i32 0, i32 3
  %20 = call i32 %17(%struct.TYPE_6__* %19)
  %21 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %22 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.sfax_hw* %24)
  %26 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %27 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %28, align 8
  %30 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %31 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %30, i32 0, i32 4
  %32 = call i32 %29(%struct.TYPE_5__* %31)
  %33 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %34 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @mISDN_unregister_device(i32* %36)
  %38 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %39 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @release_region(i32 %40, i32 256)
  %42 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %43 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pci_disable_device(i32 %44)
  %46 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %47 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pci_set_drvdata(i32 %48, i32* null)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %50)
  %52 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %53 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %52, i32 0, i32 0
  %54 = call i32 @list_del(i32* %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %55)
  %57 = load %struct.sfax_hw*, %struct.sfax_hw** %2, align 8
  %58 = call i32 @kfree(%struct.sfax_hw* %57)
  %59 = load i32, i32* @sfax_cnt, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* @sfax_cnt, align 4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @disable_hwirq(%struct.sfax_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.sfax_hw*) #1

declare dso_local i32 @mISDN_unregister_device(i32*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @pci_set_drvdata(i32, i32*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @kfree(%struct.sfax_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
