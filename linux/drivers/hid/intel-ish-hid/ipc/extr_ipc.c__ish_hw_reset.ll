; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c__ish_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c__ish_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ISHTP_DEV_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't reset - no PM caps\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Can't reset - stuck with DMA in-progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PCI_PM_CTRL = common dso_local global i64 0, align 8
@PCI_PM_CTRL_STATE_MASK = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_device*)* @_ish_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ish_hw_reset(%struct.ishtp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  %7 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %8 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = icmp ne %struct.pci_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %89

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pci_reset_function(%struct.pci_dev* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ISHTP_DEV_RESETTING, align 4
  %22 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %23 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 2
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %89

35:                                               ; preds = %24
  %36 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %37 = call i64 @ish_disable_dma(%struct.ishtp_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 2
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %89

45:                                               ; preds = %35
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PCI_PM_CTRL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @pci_read_config_word(%struct.pci_dev* %46, i64 %51, i32* %6)
  %53 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @PCI_D3hot, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCI_PM_CTRL, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @pci_write_config_word(%struct.pci_dev* %60, i64 %65, i32 %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mdelay(i32 %70)
  %72 = load i32, i32* @PCI_PM_CTRL_STATE_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @PCI_D0, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PCI_PM_CTRL, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @pci_write_config_word(%struct.pci_dev* %79, i64 %84, i32 %85)
  %87 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %88 = call i32 @ish_wakeup(%struct.ishtp_device* %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %45, %39, %29, %12
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @pci_reset_function(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @ish_disable_dma(%struct.ishtp_device*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ish_wakeup(%struct.ishtp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
