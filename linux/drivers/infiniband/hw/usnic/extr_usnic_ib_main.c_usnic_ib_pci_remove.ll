; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_main.c_usnic_ib_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_main.c_usnic_ib_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.usnic_ib_vf = type { i32, i32, %struct.usnic_ib_dev* }
%struct.usnic_ib_dev = type { i32, i32 }

@usnic_ib_undiscover_pf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Removed VF %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @usnic_ib_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usnic_ib_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.usnic_ib_vf*, align 8
  %4 = alloca %struct.usnic_ib_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.usnic_ib_vf* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.usnic_ib_vf* %6, %struct.usnic_ib_vf** %3, align 8
  %7 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %3, align 8
  %8 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %7, i32 0, i32 2
  %9 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %8, align 8
  store %struct.usnic_ib_dev* %9, %struct.usnic_ib_dev** %4, align 8
  %10 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %11 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %3, align 8
  %14 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %13, i32 0, i32 1
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %17 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %16, i32 0, i32 1
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %20 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %19, i32 0, i32 0
  %21 = load i32, i32* @usnic_ib_undiscover_pf, align 4
  %22 = call i32 @kref_put(i32* %20, i32 %21)
  %23 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %3, align 8
  %24 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @usnic_vnic_free(i32 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = call i32 @pci_set_drvdata(%struct.pci_dev* %27, i32* null)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = call i32 @pci_clear_master(%struct.pci_dev* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = call i32 @pci_release_regions(%struct.pci_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_disable_device(%struct.pci_dev* %33)
  %35 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %3, align 8
  %36 = call i32 @kfree(%struct.usnic_ib_vf* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = call i32 @pci_name(%struct.pci_dev* %37)
  %39 = call i32 @usnic_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %38)
  ret void
}

declare dso_local %struct.usnic_ib_vf* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @usnic_vnic_free(i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.usnic_ib_vf*) #1

declare dso_local i32 @usnic_info(i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
