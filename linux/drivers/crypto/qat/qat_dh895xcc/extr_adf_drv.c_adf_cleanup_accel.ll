; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_dh895xcc/extr_adf_drv.c_adf_cleanup_accel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_dh895xcc/extr_adf_drv.c_adf_cleanup_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { i32, i32*, %struct.adf_accel_pci }
%struct.adf_accel_pci = type { %struct.TYPE_2__*, %struct.adf_bar* }
%struct.TYPE_2__ = type { i32 }
%struct.adf_bar = type { i64 }

@ADF_PCI_MAX_BARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adf_accel_dev*)* @adf_cleanup_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adf_cleanup_accel(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca %struct.adf_accel_dev*, align 8
  %3 = alloca %struct.adf_accel_pci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adf_bar*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %2, align 8
  %6 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %7 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %6, i32 0, i32 2
  store %struct.adf_accel_pci* %7, %struct.adf_accel_pci** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ADF_PCI_MAX_BARS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load %struct.adf_accel_pci*, %struct.adf_accel_pci** %3, align 8
  %14 = getelementptr inbounds %struct.adf_accel_pci, %struct.adf_accel_pci* %13, i32 0, i32 1
  %15 = load %struct.adf_bar*, %struct.adf_bar** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.adf_bar, %struct.adf_bar* %15, i64 %17
  store %struct.adf_bar* %18, %struct.adf_bar** %5, align 8
  %19 = load %struct.adf_bar*, %struct.adf_bar** %5, align 8
  %20 = getelementptr inbounds %struct.adf_bar, %struct.adf_bar* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %12
  %24 = load %struct.adf_accel_pci*, %struct.adf_accel_pci** %3, align 8
  %25 = getelementptr inbounds %struct.adf_accel_pci, %struct.adf_accel_pci* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.adf_bar*, %struct.adf_bar** %5, align 8
  %28 = getelementptr inbounds %struct.adf_bar, %struct.adf_bar* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pci_iounmap(%struct.TYPE_2__* %26, i64 %29)
  br label %31

31:                                               ; preds = %23, %12
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %8

35:                                               ; preds = %8
  %36 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %37 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.adf_accel_pci*, %struct.adf_accel_pci** %3, align 8
  %42 = getelementptr inbounds %struct.adf_accel_pci, %struct.adf_accel_pci* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %51 [
    i32 128, label %46
  ]

46:                                               ; preds = %40
  %47 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %48 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @adf_clean_hw_data_dh895xcc(i32* %49)
  br label %52

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %46
  %53 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %54 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @kfree(i32* %55)
  %57 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %58 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %52, %35
  %60 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %61 = call i32 @adf_cfg_dev_remove(%struct.adf_accel_dev* %60)
  %62 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %63 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @debugfs_remove(i32 %64)
  %66 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %67 = call i32 @adf_devmgr_rm_dev(%struct.adf_accel_dev* %66, i32* null)
  ret void
}

declare dso_local i32 @pci_iounmap(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @adf_clean_hw_data_dh895xcc(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @adf_cfg_dev_remove(%struct.adf_accel_dev*) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @adf_devmgr_rm_dev(%struct.adf_accel_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
