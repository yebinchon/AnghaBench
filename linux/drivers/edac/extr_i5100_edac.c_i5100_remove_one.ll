; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @i5100_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5100_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i5100_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = call %struct.mem_ctl_info* @edac_mc_del_mc(i32* %6)
  store %struct.mem_ctl_info* %7, %struct.mem_ctl_info** %3, align 8
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %9 = icmp ne %struct.mem_ctl_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 0
  %14 = load %struct.i5100_priv*, %struct.i5100_priv** %13, align 8
  store %struct.i5100_priv* %14, %struct.i5100_priv** %4, align 8
  %15 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %16 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @edac_debugfs_remove_recursive(i32 %17)
  %19 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %20 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %22 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %21, i32 0, i32 3
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @pci_disable_device(%struct.pci_dev* %24)
  %26 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %27 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %26, i32 0, i32 2
  %28 = load %struct.pci_dev*, %struct.pci_dev** %27, align 8
  %29 = call i32 @pci_disable_device(%struct.pci_dev* %28)
  %30 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %31 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %30, i32 0, i32 1
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  %33 = call i32 @pci_disable_device(%struct.pci_dev* %32)
  %34 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %35 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %34, i32 0, i32 0
  %36 = load %struct.pci_dev*, %struct.pci_dev** %35, align 8
  %37 = call i32 @pci_disable_device(%struct.pci_dev* %36)
  %38 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %39 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %38, i32 0, i32 2
  %40 = load %struct.pci_dev*, %struct.pci_dev** %39, align 8
  %41 = call i32 @pci_dev_put(%struct.pci_dev* %40)
  %42 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %43 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %42, i32 0, i32 1
  %44 = load %struct.pci_dev*, %struct.pci_dev** %43, align 8
  %45 = call i32 @pci_dev_put(%struct.pci_dev* %44)
  %46 = load %struct.i5100_priv*, %struct.i5100_priv** %4, align 8
  %47 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %46, i32 0, i32 0
  %48 = load %struct.pci_dev*, %struct.pci_dev** %47, align 8
  %49 = call i32 @pci_dev_put(%struct.pci_dev* %48)
  %50 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %51 = call i32 @edac_mc_free(%struct.mem_ctl_info* %50)
  br label %52

52:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.mem_ctl_info* @edac_mc_del_mc(i32*) #1

declare dso_local i32 @edac_debugfs_remove_recursive(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
