; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hifn_device = type { i64*, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @hifn_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hifn_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.hifn_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.hifn_device* %6, %struct.hifn_device** %4, align 8
  %7 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %8 = icmp ne %struct.hifn_device* %7, null
  br i1 %8, label %9, label %67

9:                                                ; preds = %1
  %10 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %11 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %10, i32 0, i32 5
  %12 = call i32 @cancel_delayed_work_sync(i32* %11)
  %13 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %14 = call i32 @hifn_unregister_rng(%struct.hifn_device* %13)
  %15 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %16 = call i32 @hifn_unregister_alg(%struct.hifn_device* %15)
  %17 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %18 = call i32 @hifn_reset_dma(%struct.hifn_device* %17, i32 1)
  %19 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %20 = call i32 @hifn_stop_device(%struct.hifn_device* %19)
  %21 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %22 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.hifn_device* %24)
  %26 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %27 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %26, i32 0, i32 3
  %28 = call i32 @tasklet_kill(i32* %27)
  %29 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %30 = call i32 @hifn_flush(%struct.hifn_device* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %33 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %36 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pci_free_consistent(%struct.pci_dev* %31, i32 4, i32 %34, i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %61, %9
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %44 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %53 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @iounmap(i64 %58)
  br label %60

60:                                               ; preds = %51, %42
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %39

64:                                               ; preds = %39
  %65 = load %struct.hifn_device*, %struct.hifn_device** %4, align 8
  %66 = call i32 @kfree(%struct.hifn_device* %65)
  br label %67

67:                                               ; preds = %64, %1
  %68 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %69 = call i32 @pci_release_regions(%struct.pci_dev* %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %71 = call i32 @pci_disable_device(%struct.pci_dev* %70)
  ret void
}

declare dso_local %struct.hifn_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @hifn_unregister_rng(%struct.hifn_device*) #1

declare dso_local i32 @hifn_unregister_alg(%struct.hifn_device*) #1

declare dso_local i32 @hifn_reset_dma(%struct.hifn_device*, i32) #1

declare dso_local i32 @hifn_stop_device(%struct.hifn_device*) #1

declare dso_local i32 @free_irq(i32, %struct.hifn_device*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @hifn_flush(%struct.hifn_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.hifn_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
