; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_via82cxxx.c_via_set_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_via82cxxx.c_via_set_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.ide_host = type { %struct.via82cxxx_dev* }
%struct.via82cxxx_dev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ide_timing = type { i32 }

@via_clock = common dso_local global i32 0, align 4
@IDE_TIMING_8BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*)* @via_set_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_set_drive(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.ide_host*, align 8
  %8 = alloca %struct.via82cxxx_dev*, align 8
  %9 = alloca %struct.ide_timing, align 4
  %10 = alloca %struct.ide_timing, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = call %struct.TYPE_12__* @ide_get_pair_dev(%struct.TYPE_12__* %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %5, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %6, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %20)
  store %struct.ide_host* %21, %struct.ide_host** %7, align 8
  %22 = load %struct.ide_host*, %struct.ide_host** %7, align 8
  %23 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %22, i32 0, i32 0
  %24 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %23, align 8
  store %struct.via82cxxx_dev* %24, %struct.via82cxxx_dev** %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @via_clock, align 4
  %29 = sdiv i32 1000000000, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %8, align 8
  %31 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %46 [
    i32 131, label %35
    i32 130, label %37
    i32 129, label %40
    i32 128, label %43
  ]

35:                                               ; preds = %2
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %12, align 4
  br label %48

37:                                               ; preds = %2
  %38 = load i32, i32* %11, align 4
  %39 = udiv i32 %38, 2
  store i32 %39, i32* %12, align 4
  br label %48

40:                                               ; preds = %2
  %41 = load i32, i32* %11, align 4
  %42 = udiv i32 %41, 3
  store i32 %42, i32* %12, align 4
  br label %48

43:                                               ; preds = %2
  %44 = load i32, i32* %11, align 4
  %45 = udiv i32 %44, 4
  store i32 %45, i32* %12, align 4
  br label %48

46:                                               ; preds = %2
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %46, %43, %40, %37, %35
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @ide_timing_compute(%struct.TYPE_12__* %49, i32 %50, %struct.ide_timing* %9, i32 %51, i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @ide_timing_compute(%struct.TYPE_12__* %57, i32 %60, %struct.ide_timing* %10, i32 %61, i32 %62)
  %64 = load i32, i32* @IDE_TIMING_8BIT, align 4
  %65 = call i32 @ide_timing_merge(%struct.ide_timing* %10, %struct.ide_timing* %9, %struct.ide_timing* %9, i32 %64)
  br label %66

66:                                               ; preds = %56, %48
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @via_set_speed(%struct.TYPE_11__* %67, i32 %70, %struct.ide_timing* %9)
  ret void
}

declare dso_local %struct.TYPE_12__* @ide_get_pair_dev(%struct.TYPE_12__*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ide_timing_compute(%struct.TYPE_12__*, i32, %struct.ide_timing*, i32, i32) #1

declare dso_local i32 @ide_timing_merge(%struct.ide_timing*, %struct.ide_timing*, %struct.ide_timing*, i32) #1

declare dso_local i32 @via_set_speed(%struct.TYPE_11__*, i32, %struct.ide_timing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
