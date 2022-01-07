; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_main.c_nitrox_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_main.c_nitrox_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.nitrox_device = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Device refcnt not zero (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Removing Device %x:%x\0A\00", align 1
@__NDEV_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @nitrox_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nitrox_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.nitrox_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.nitrox_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.nitrox_device* %5, %struct.nitrox_device** %3, align 8
  %6 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %7 = icmp ne %struct.nitrox_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %57

9:                                                ; preds = %1
  %10 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %11 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %10, i32 0, i32 3
  %12 = call i32 @refcount_dec_and_test(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %16 = call i32 @DEV(%struct.nitrox_device* %15)
  %17 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %18 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %17, i32 0, i32 3
  %19 = call i32 @refcount_read(i32* %18)
  %20 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %57

21:                                               ; preds = %9
  %22 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %23 = call i32 @DEV(%struct.nitrox_device* %22)
  %24 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %25 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %29 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_info(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %31)
  %33 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %34 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %33, i32 0, i32 1
  %35 = load i32, i32* @__NDEV_NOT_READY, align 4
  %36 = call i32 @atomic_set(i32* %34, i32 %35)
  %37 = call i32 (...) @smp_mb__after_atomic()
  %38 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %39 = call i32 @nitrox_remove_from_devlist(%struct.nitrox_device* %38)
  %40 = call i32 (...) @nitrox_crypto_unregister()
  %41 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %42 = call i32 @nitrox_debugfs_exit(%struct.nitrox_device* %41)
  %43 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %44 = call i32 @nitrox_pf_sw_cleanup(%struct.nitrox_device* %43)
  %45 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %46 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @iounmap(i32 %47)
  %49 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %50 = call i32 @kfree(%struct.nitrox_device* %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = call i32 @pci_set_drvdata(%struct.pci_dev* %51, i32* null)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %54 = call i32 @pci_release_mem_regions(%struct.pci_dev* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = call i32 @pci_disable_device(%struct.pci_dev* %55)
  br label %57

57:                                               ; preds = %21, %14, %8
  ret void
}

declare dso_local %struct.nitrox_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @DEV(%struct.nitrox_device*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @nitrox_remove_from_devlist(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_crypto_unregister(...) #1

declare dso_local i32 @nitrox_debugfs_exit(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_pf_sw_cleanup(%struct.nitrox_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.nitrox_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
