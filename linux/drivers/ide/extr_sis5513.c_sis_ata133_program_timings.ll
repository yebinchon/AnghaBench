; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_sis5513.c_sis_ata133_program_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_sis5513.c_sis_ata133_program_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }

@ATA_133 = common dso_local global i64 0, align 8
@ATA_100 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_PIO_0 = common dso_local global i64 0, align 8
@ini_time_value = common dso_local global i32** null, align 8
@act_time_value = common dso_local global i32** null, align 8
@rco_time_value = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @sis_ata133_program_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_ata133_program_timings(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = call i64 @sis_ata133_get_base(%struct.TYPE_6__* %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @pci_read_config_dword(%struct.pci_dev* %18, i64 %19, i32* %6)
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, -1061154817
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* @ATA_133, align 8
  br label %30

28:                                               ; preds = %2
  %29 = load i64, i64* @ATA_100, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @XFER_MW_DMA_0, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, -5
  store i32 %37, i32* %6, align 4
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @XFER_MW_DMA_0, align 8
  %40 = sub nsw i64 %38, %39
  %41 = add nsw i64 %40, 5
  store i64 %41, i64* %9, align 8
  br label %46

42:                                               ; preds = %30
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @XFER_PIO_0, align 8
  %45 = sub nsw i64 %43, %44
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %42, %35
  %47 = load i32**, i32*** @ini_time_value, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 12
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32**, i32*** @act_time_value, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 16
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i32**, i32*** @rco_time_value, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 24
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @pci_write_config_dword(%struct.pci_dev* %77, i64 %78, i32 %79)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @sis_ata133_get_base(%struct.TYPE_6__*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
