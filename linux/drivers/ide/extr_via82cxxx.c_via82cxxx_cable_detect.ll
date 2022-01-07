; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_via82cxxx.c_via82cxxx_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_via82cxxx.c_via82cxxx_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.ide_host = type { %struct.via82cxxx_dev* }
%struct.via82cxxx_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ATA_CBL_PATA40_SHORT = common dso_local global i32 0, align 4
@VIA_SATA_PATA = common dso_local global i32 0, align 4
@ATA_CBL_SATA = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @via82cxxx_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via82cxxx_cable_detect(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ide_host*, align 8
  %6 = alloca %struct.via82cxxx_dev*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pci_dev* @to_pci_dev(i32 %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %11)
  store %struct.ide_host* %12, %struct.ide_host** %5, align 8
  %13 = load %struct.ide_host*, %struct.ide_host** %5, align 8
  %14 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %13, i32 0, i32 0
  %15 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %14, align 8
  store %struct.via82cxxx_dev* %15, %struct.via82cxxx_dev** %6, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i64 @via_cable_override(%struct.pci_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ATA_CBL_PATA40_SHORT, align 4
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %6, align 8
  %23 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @VIA_SATA_PATA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @ATA_CBL_SATA, align 4
  store i32 %36, i32* %2, align 4
  br label %51

37:                                               ; preds = %30, %21
  %38 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %6, align 8
  %39 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %40, %43
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %47, %35, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @via_cable_override(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
