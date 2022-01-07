; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dca.c_ioat_dca_remove_requester.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dca.c_ioat_dca_remove_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_provider = type { i32 }
%struct.device = type { i32 }
%struct.ioat_dca_priv = type { i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IOAT3_DCA_GREQID_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dca_provider*, %struct.device*)* @ioat_dca_remove_requester to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_dca_remove_requester(%struct.dca_provider* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dca_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ioat_dca_priv*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.dca_provider* %0, %struct.dca_provider** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %10 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %11 = call %struct.ioat_dca_priv* @dca_priv(%struct.dca_provider* %10)
  store %struct.ioat_dca_priv* %11, %struct.ioat_dca_priv** %6, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i32 @dev_is_pci(%struct.device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %81

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.pci_dev* @to_pci_dev(%struct.device* %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %7, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %75, %18
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %24 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %21
  %28 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.pci_dev*, %struct.pci_dev** %34, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %37 = icmp eq %struct.pci_dev* %35, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %27
  %39 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %40 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IOAT3_DCA_GREQID_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i64 @readw(i64 %43)
  store i64 %44, i64* %9, align 8
  %45 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %46 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = call i32 @writel(i32 0, i64 %53)
  %55 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %56 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store %struct.pci_dev* null, %struct.pci_dev** %61, align 8
  %62 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %63 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %6, align 8
  %70 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %81

74:                                               ; preds = %27
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %21

78:                                               ; preds = %21
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %38, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.ioat_dca_priv* @dca_priv(%struct.dca_provider*) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i64 @readw(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
