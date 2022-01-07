; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_via82cxxx.c_via_config_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_via82cxxx.c_via_config_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_isa_bridge = type { i64, i32, i64, i64 }
%struct.pci_dev = type { i64 }

@via_isa_bridges = common dso_local global %struct.via_isa_bridge* null, align 8
@PCI_DEVICE_ID_VIA_ANON = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_VIA = common dso_local global i64 0, align 8
@VIA_BAD_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.via_isa_bridge* (%struct.pci_dev**)* @via_config_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.via_isa_bridge* @via_config_find(%struct.pci_dev** %0) #0 {
  %2 = alloca %struct.pci_dev**, align 8
  %3 = alloca %struct.via_isa_bridge*, align 8
  store %struct.pci_dev** %0, %struct.pci_dev*** %2, align 8
  %4 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** @via_isa_bridges, align 8
  store %struct.via_isa_bridge* %4, %struct.via_isa_bridge** %3, align 8
  br label %5

5:                                                ; preds = %54, %1
  %6 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  %7 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PCI_DEVICE_ID_VIA_ANON, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %57

11:                                               ; preds = %5
  %12 = load i64, i64* @PCI_VENDOR_ID_VIA, align 8
  %13 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  %14 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VIA_BAD_ID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %12, %22
  %24 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  %25 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.pci_dev* @pci_get_device(i64 %23, i64 %26, i32* null)
  %28 = load %struct.pci_dev**, %struct.pci_dev*** %2, align 8
  store %struct.pci_dev* %27, %struct.pci_dev** %28, align 8
  %29 = icmp ne %struct.pci_dev* %27, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %11
  %31 = load %struct.pci_dev**, %struct.pci_dev*** %2, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  %36 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.pci_dev**, %struct.pci_dev*** %2, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %40, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  %45 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %57

49:                                               ; preds = %39, %30
  %50 = load %struct.pci_dev**, %struct.pci_dev*** %2, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %50, align 8
  %52 = call i32 @pci_dev_put(%struct.pci_dev* %51)
  br label %53

53:                                               ; preds = %49, %11
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  %56 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %55, i32 1
  store %struct.via_isa_bridge* %56, %struct.via_isa_bridge** %3, align 8
  br label %5

57:                                               ; preds = %48, %5
  %58 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %3, align 8
  ret %struct.via_isa_bridge* %58
}

declare dso_local %struct.pci_dev* @pci_get_device(i64, i64, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
