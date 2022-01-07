; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_alim15x3.c_ali_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_alim15x3.c_ali_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.ide_timing = type { i32 }

@ali_set_dma_mode.udma_timing = internal global [7 x i32] [i32 12, i32 11, i32 10, i32 9, i32 8, i32 15, i32 13], align 16
@ide_pci_clk = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@IDE_TIMING_SETUP = common dso_local global i32 0, align 4
@IDE_TIMING_8BIT = common dso_local global i32 0, align 4
@XFER_UDMA_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*)* @ali_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ali_set_dma_mode(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ide_timing, align 4
  %12 = alloca %struct.ide_timing, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = call %struct.TYPE_11__* @ide_get_pair_dev(%struct.TYPE_11__* %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %6, align 8
  %19 = load i32, i32* @ide_pci_clk, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ide_pci_clk, align 4
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 33, %23 ]
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 1000000, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @XFER_UDMA_0, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %24
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @ide_timing_compute(%struct.TYPE_11__* %36, i32 %39, %struct.ide_timing* %11, i64 %40, i32 1)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %71

44:                                               ; preds = %35
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @ide_timing_compute(%struct.TYPE_11__* %45, i32 %48, %struct.ide_timing* %12, i64 %49, i32 1)
  %51 = load i32, i32* @IDE_TIMING_SETUP, align 4
  %52 = load i32, i32* @IDE_TIMING_8BIT, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @ide_timing_merge(%struct.ide_timing* %12, %struct.ide_timing* %11, %struct.ide_timing* %11, i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %44
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @ide_timing_compute(%struct.TYPE_11__* %60, i32 %63, %struct.ide_timing* %12, i64 %64, i32 1)
  %66 = load i32, i32* @IDE_TIMING_SETUP, align 4
  %67 = load i32, i32* @IDE_TIMING_8BIT, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @ide_timing_merge(%struct.ide_timing* %12, %struct.ide_timing* %11, %struct.ide_timing* %11, i32 %68)
  br label %70

70:                                               ; preds = %59, %44
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = call i32 @ali_program_timings(%struct.TYPE_10__* %72, %struct.TYPE_11__* %73, %struct.ide_timing* %11, i32 0)
  br label %97

75:                                               ; preds = %24
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @XFER_UDMA_0, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [7 x i32], [7 x i32]* @ali_set_dma_mode.udma_timing, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ali_program_timings(%struct.TYPE_10__* %76, %struct.TYPE_11__* %77, %struct.ide_timing* null, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @XFER_UDMA_3, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %75
  %89 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %90 = call i32 @pci_read_config_byte(%struct.pci_dev* %89, i32 75, i32* %10)
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %91, 1
  store i32 %92, i32* %10, align 4
  %93 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @pci_write_config_byte(%struct.pci_dev* %93, i32 75, i32 %94)
  br label %96

96:                                               ; preds = %88, %75
  br label %97

97:                                               ; preds = %96, %71
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.TYPE_11__* @ide_get_pair_dev(%struct.TYPE_11__*) #1

declare dso_local i32 @ide_timing_compute(%struct.TYPE_11__*, i32, %struct.ide_timing*, i64, i32) #1

declare dso_local i32 @ide_timing_merge(%struct.ide_timing*, %struct.ide_timing*, %struct.ide_timing*, i32) #1

declare dso_local i32 @ali_program_timings(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.ide_timing*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
