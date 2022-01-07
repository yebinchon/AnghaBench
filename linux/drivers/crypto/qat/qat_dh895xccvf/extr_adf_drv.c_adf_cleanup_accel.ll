; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_dh895xccvf/extr_adf_drv.c_adf_cleanup_accel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_dh895xccvf/extr_adf_drv.c_adf_cleanup_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { i32, i32*, %struct.adf_accel_pci }
%struct.adf_accel_pci = type { %struct.TYPE_2__*, %struct.adf_bar* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.adf_bar = type { i64 }

@ADF_PCI_MAX_BARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adf_accel_dev*)* @adf_cleanup_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adf_cleanup_accel(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca %struct.adf_accel_dev*, align 8
  %3 = alloca %struct.adf_accel_pci*, align 8
  %4 = alloca %struct.adf_accel_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adf_bar*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %2, align 8
  %7 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %8 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %7, i32 0, i32 2
  store %struct.adf_accel_pci* %8, %struct.adf_accel_pci** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ADF_PCI_MAX_BARS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.adf_accel_pci*, %struct.adf_accel_pci** %3, align 8
  %15 = getelementptr inbounds %struct.adf_accel_pci, %struct.adf_accel_pci* %14, i32 0, i32 1
  %16 = load %struct.adf_bar*, %struct.adf_bar** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.adf_bar, %struct.adf_bar* %16, i64 %18
  store %struct.adf_bar* %19, %struct.adf_bar** %6, align 8
  %20 = load %struct.adf_bar*, %struct.adf_bar** %6, align 8
  %21 = getelementptr inbounds %struct.adf_bar, %struct.adf_bar* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %13
  %25 = load %struct.adf_accel_pci*, %struct.adf_accel_pci** %3, align 8
  %26 = getelementptr inbounds %struct.adf_accel_pci, %struct.adf_accel_pci* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.adf_bar*, %struct.adf_bar** %6, align 8
  %29 = getelementptr inbounds %struct.adf_bar, %struct.adf_bar* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @pci_iounmap(%struct.TYPE_2__* %27, i64 %30)
  br label %32

32:                                               ; preds = %24, %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %38 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load %struct.adf_accel_pci*, %struct.adf_accel_pci** %3, align 8
  %43 = getelementptr inbounds %struct.adf_accel_pci, %struct.adf_accel_pci* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %52 [
    i32 128, label %47
  ]

47:                                               ; preds = %41
  %48 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %49 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @adf_clean_hw_data_dh895xcciov(i32* %50)
  br label %53

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %47
  %54 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %55 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %59 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %53, %36
  %61 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %62 = call i32 @adf_cfg_dev_remove(%struct.adf_accel_dev* %61)
  %63 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %64 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @debugfs_remove(i32 %65)
  %67 = load %struct.adf_accel_pci*, %struct.adf_accel_pci** %3, align 8
  %68 = getelementptr inbounds %struct.adf_accel_pci, %struct.adf_accel_pci* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.adf_accel_dev* @adf_devmgr_pci_to_accel_dev(i32 %71)
  store %struct.adf_accel_dev* %72, %struct.adf_accel_dev** %4, align 8
  %73 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %74 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %4, align 8
  %75 = call i32 @adf_devmgr_rm_dev(%struct.adf_accel_dev* %73, %struct.adf_accel_dev* %74)
  ret void
}

declare dso_local i32 @pci_iounmap(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @adf_clean_hw_data_dh895xcciov(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @adf_cfg_dev_remove(%struct.adf_accel_dev*) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local %struct.adf_accel_dev* @adf_devmgr_pci_to_accel_dev(i32) #1

declare dso_local i32 @adf_devmgr_rm_dev(%struct.adf_accel_dev*, %struct.adf_accel_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
