; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_remove_one_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_remove_one_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_settings = type { i32 }
%struct.pci_dev = type { i32 }
%struct.mem_ctl_info = type { %struct.ecc_settings* }
%struct.amd64_pvt = type opaque
%struct.TYPE_2__ = type { %struct.pci_dev* }

@ecc_stngs = common dso_local global %struct.ecc_settings** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @remove_one_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_one_instance(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.ecc_settings*, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.amd64_pvt*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.TYPE_2__* @node_to_amd_nb(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.ecc_settings**, %struct.ecc_settings*** @ecc_stngs, align 8
  %12 = load i32, i32* %2, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ecc_settings*, %struct.ecc_settings** %11, i64 %13
  %15 = load %struct.ecc_settings*, %struct.ecc_settings** %14, align 8
  store %struct.ecc_settings* %15, %struct.ecc_settings** %4, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = call %struct.mem_ctl_info* @find_mci_by_dev(i32* %17)
  store %struct.mem_ctl_info* %18, %struct.mem_ctl_info** %5, align 8
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %20 = icmp ne %struct.mem_ctl_info* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call %struct.mem_ctl_info* @edac_mc_del_mc(i32* %25)
  store %struct.mem_ctl_info* %26, %struct.mem_ctl_info** %5, align 8
  %27 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %28 = icmp ne %struct.mem_ctl_info* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %59

30:                                               ; preds = %1
  %31 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %32 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %31, i32 0, i32 0
  %33 = load %struct.ecc_settings*, %struct.ecc_settings** %32, align 8
  %34 = bitcast %struct.ecc_settings* %33 to %struct.amd64_pvt*
  store %struct.amd64_pvt* %34, %struct.amd64_pvt** %6, align 8
  %35 = load %struct.ecc_settings*, %struct.ecc_settings** %4, align 8
  %36 = load i32, i32* %2, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = call i32 @restore_ecc_error_reporting(%struct.ecc_settings* %35, i32 %36, %struct.pci_dev* %37)
  %39 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %40 = bitcast %struct.amd64_pvt* %39 to %struct.ecc_settings*
  %41 = call i32 @free_mc_sibling_devs(%struct.ecc_settings* %40)
  %42 = load %struct.ecc_settings**, %struct.ecc_settings*** @ecc_stngs, align 8
  %43 = load i32, i32* %2, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ecc_settings*, %struct.ecc_settings** %42, i64 %44
  %46 = load %struct.ecc_settings*, %struct.ecc_settings** %45, align 8
  %47 = call i32 @kfree(%struct.ecc_settings* %46)
  %48 = load %struct.ecc_settings**, %struct.ecc_settings*** @ecc_stngs, align 8
  %49 = load i32, i32* %2, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ecc_settings*, %struct.ecc_settings** %48, i64 %50
  store %struct.ecc_settings* null, %struct.ecc_settings** %51, align 8
  %52 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %53 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %52, i32 0, i32 0
  store %struct.ecc_settings* null, %struct.ecc_settings** %53, align 8
  %54 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %55 = bitcast %struct.amd64_pvt* %54 to %struct.ecc_settings*
  %56 = call i32 @kfree(%struct.ecc_settings* %55)
  %57 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %58 = call i32 @edac_mc_free(%struct.mem_ctl_info* %57)
  br label %59

59:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.TYPE_2__* @node_to_amd_nb(i32) #1

declare dso_local %struct.mem_ctl_info* @find_mci_by_dev(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_del_mc(i32*) #1

declare dso_local i32 @restore_ecc_error_reporting(%struct.ecc_settings*, i32, %struct.pci_dev*) #1

declare dso_local i32 @free_mc_sibling_devs(%struct.ecc_settings*) #1

declare dso_local i32 @kfree(%struct.ecc_settings*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
