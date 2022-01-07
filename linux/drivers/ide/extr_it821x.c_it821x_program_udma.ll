; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_it821x.c_it821x_program_udma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_it821x.c_it821x_program_udma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.it821x_dev = type { i64, i64 }

@ATA_66 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @it821x_program_udma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it821x_program_udma(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.it821x_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = call %struct.it821x_dev* @ide_get_hwifdata(%struct.TYPE_5__* %18)
  store %struct.it821x_dev* %19, %struct.it821x_dev** %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load %struct.it821x_dev*, %struct.it821x_dev** %7, align 8
  %28 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ATA_66, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 8
  store i32 %34, i32* %10, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 255
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.it821x_dev*, %struct.it821x_dev** %7, align 8
  %40 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 4, %45
  %47 = add nsw i32 86, %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @pci_write_config_byte(%struct.pci_dev* %44, i32 %49, i32 %50)
  br label %66

52:                                               ; preds = %38
  %53 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 4, %54
  %56 = add nsw i32 86, %55
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @pci_write_config_byte(%struct.pci_dev* %53, i32 %56, i32 %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 4, %60
  %62 = add nsw i32 86, %61
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @pci_write_config_byte(%struct.pci_dev* %59, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %52, %43
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.it821x_dev* @ide_get_hwifdata(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
