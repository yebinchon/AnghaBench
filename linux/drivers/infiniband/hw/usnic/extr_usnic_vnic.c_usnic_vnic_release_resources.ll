; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_release_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_vnic = type { %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@USNIC_VNIC_RES_TYPE_EOL = common dso_local global i32 0, align 4
@USNIC_VNIC_RES_TYPE_MAX = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usnic_vnic*)* @usnic_vnic_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usnic_vnic_release_resources(%struct.usnic_vnic* %0) #0 {
  %2 = alloca %struct.usnic_vnic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.usnic_vnic* %0, %struct.usnic_vnic** %2, align 8
  %6 = load %struct.usnic_vnic*, %struct.usnic_vnic** %2, align 8
  %7 = call %struct.pci_dev* @usnic_vnic_get_pdev(%struct.usnic_vnic* %6)
  store %struct.pci_dev* %7, %struct.pci_dev** %4, align 8
  %8 = load i32, i32* @USNIC_VNIC_RES_TYPE_EOL, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @USNIC_VNIC_RES_TYPE_MAX, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.usnic_vnic*, %struct.usnic_vnic** %2, align 8
  %16 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @usnic_vnic_free_res_chunk(i32* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.usnic_vnic*, %struct.usnic_vnic** %2, align 8
  %27 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @vnic_dev_unregister(i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %55, %25
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.usnic_vnic*, %struct.usnic_vnic** %2, align 8
  %33 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %34)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @pci_resource_flags(%struct.pci_dev* %38, i32 %39)
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %55

45:                                               ; preds = %37
  %46 = load %struct.usnic_vnic*, %struct.usnic_vnic** %2, align 8
  %47 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @iounmap(i32 %53)
  br label %55

55:                                               ; preds = %45, %44
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %30

58:                                               ; preds = %30
  ret void
}

declare dso_local %struct.pci_dev* @usnic_vnic_get_pdev(%struct.usnic_vnic*) #1

declare dso_local i32 @usnic_vnic_free_res_chunk(i32*) #1

declare dso_local i32 @vnic_dev_unregister(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
