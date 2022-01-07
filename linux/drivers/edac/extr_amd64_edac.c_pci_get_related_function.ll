; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_pci_get_related_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_pci_get_related_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (i32, i32, %struct.pci_dev*)* @pci_get_related_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @pci_get_related_function(i32 %0, i32 %1, %struct.pci_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.pci_dev* %2, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  br label %8

8:                                                ; preds = %47, %3
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %12 = call %struct.pci_dev* @pci_get_device(i32 %9, i32 %10, %struct.pci_dev* %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %7, align 8
  %13 = icmp ne %struct.pci_dev* %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i64 @pci_domain_nr(%struct.TYPE_2__* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i64 @pci_domain_nr(%struct.TYPE_2__* %21)
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %14
  %25 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %24
  %37 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @PCI_SLOT(i32 %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @PCI_SLOT(i32 %43)
  %45 = icmp eq i64 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %48

47:                                               ; preds = %36, %24, %14
  br label %8

48:                                               ; preds = %46, %8
  %49 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  ret %struct.pci_dev* %49
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i64 @pci_domain_nr(%struct.TYPE_2__*) #1

declare dso_local i64 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
