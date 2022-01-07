; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_pdc202xx_new.c_pdc202new_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_pdc202xx_new.c_pdc202new_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ide_host = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pdc202new_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc202new_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ide_host*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.ide_host* %6, %struct.ide_host** %3, align 8
  %7 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %8 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %15 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.pci_dev* @to_pci_dev(i64 %18)
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %13
  %22 = phi %struct.pci_dev* [ %19, %13 ], [ null, %20 ]
  store %struct.pci_dev* %22, %struct.pci_dev** %4, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @ide_pci_remove(%struct.pci_dev* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @pci_dev_put(%struct.pci_dev* %25)
  ret void
}

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i64) #1

declare dso_local i32 @ide_pci_remove(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
