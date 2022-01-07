; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dca.c_ioat_dca_dev_managed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dca.c_ioat_dca_dev_managed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_provider = type { i32 }
%struct.device = type { i32 }
%struct.ioat_dca_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dca_provider*, %struct.device*)* @ioat_dca_dev_managed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_dca_dev_managed(%struct.dca_provider* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dca_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ioat_dca_priv*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.dca_provider* %0, %struct.dca_provider** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %10 = call %struct.ioat_dca_priv* @dca_priv(%struct.dca_provider* %9)
  store %struct.ioat_dca_priv* %10, %struct.ioat_dca_priv** %6, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.pci_dev* @to_pci_dev(%struct.device* %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %32, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %16 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %21 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = icmp eq %struct.pci_dev* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %36

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %13

35:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.ioat_dca_priv* @dca_priv(%struct.dca_provider*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
