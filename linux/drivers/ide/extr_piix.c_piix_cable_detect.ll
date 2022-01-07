; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_piix.c_piix_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_piix.c_piix_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ich_laptop = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.pci_dev = type { i64, i64, i64 }

@ich_laptop = common dso_local global %struct.ich_laptop* null, align 8
@ATA_CBL_PATA40_SHORT = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @piix_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix_cable_detect(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ich_laptop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.ich_laptop*, %struct.ich_laptop** @ich_laptop, align 8
  %13 = getelementptr inbounds %struct.ich_laptop, %struct.ich_laptop* %12, i64 0
  store %struct.ich_laptop* %13, %struct.ich_laptop** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 192, i32 48
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %51, %1
  %21 = load %struct.ich_laptop*, %struct.ich_laptop** %5, align 8
  %22 = getelementptr inbounds %struct.ich_laptop, %struct.ich_laptop* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  %26 = load %struct.ich_laptop*, %struct.ich_laptop** %5, align 8
  %27 = getelementptr inbounds %struct.ich_laptop, %struct.ich_laptop* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %25
  %34 = load %struct.ich_laptop*, %struct.ich_laptop** %5, align 8
  %35 = getelementptr inbounds %struct.ich_laptop, %struct.ich_laptop* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.ich_laptop*, %struct.ich_laptop** %5, align 8
  %43 = getelementptr inbounds %struct.ich_laptop, %struct.ich_laptop* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @ATA_CBL_PATA40_SHORT, align 4
  store i32 %50, i32* %2, align 4
  br label %67

51:                                               ; preds = %41, %33, %25
  %52 = load %struct.ich_laptop*, %struct.ich_laptop** %5, align 8
  %53 = getelementptr inbounds %struct.ich_laptop, %struct.ich_laptop* %52, i32 1
  store %struct.ich_laptop* %53, %struct.ich_laptop** %5, align 8
  br label %20

54:                                               ; preds = %20
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @pci_read_config_byte(%struct.pci_dev* %55, i32 84, i32* %6)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @ATA_CBL_PATA80, align 4
  br label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @ATA_CBL_PATA40, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %49
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
