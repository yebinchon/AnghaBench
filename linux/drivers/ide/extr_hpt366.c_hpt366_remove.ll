; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_hpt366.c_hpt366_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_hpt366.c_hpt366_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ide_host = type { i64*, %struct.ide_info* }
%struct.ide_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @hpt366_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt366_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ide_host*, align 8
  %4 = alloca %struct.ide_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.ide_host* %7, %struct.ide_host** %3, align 8
  %8 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %9 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %8, i32 0, i32 1
  %10 = load %struct.ide_info*, %struct.ide_info** %9, align 8
  store %struct.ide_info* %10, %struct.ide_info** %4, align 8
  %11 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %12 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %19 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.pci_dev* @to_pci_dev(i64 %22)
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %17
  %26 = phi %struct.pci_dev* [ %23, %17 ], [ null, %24 ]
  store %struct.pci_dev* %26, %struct.pci_dev** %5, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = call i32 @ide_pci_remove(%struct.pci_dev* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = call i32 @pci_dev_put(%struct.pci_dev* %29)
  %31 = load %struct.ide_info*, %struct.ide_info** %4, align 8
  %32 = call i32 @kfree(%struct.ide_info* %31)
  ret void
}

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i64) #1

declare dso_local i32 @ide_pci_remove(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.ide_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
