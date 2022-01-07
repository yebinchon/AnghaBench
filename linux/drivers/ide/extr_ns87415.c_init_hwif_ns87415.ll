; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ns87415.c_init_hwif_ns87415.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ns87415.c_init_hwif_ns87415.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i32, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.pci_dev = type { i32 }

@ns87415_control = common dso_local global i32* null, align 8
@ns87415_count = common dso_local global i32 0, align 4
@ATA_DMA_STATUS = common dso_local global i64 0, align 8
@ATA_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @init_hwif_ns87415 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_hwif_ns87415(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.pci_dev* @to_pci_dev(i32 %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call i32 @pci_read_config_dword(%struct.pci_dev* %11, i32 64, i32* %4)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call i32 @pci_read_config_byte(%struct.pci_dev* %13, i32 9, i32* %6)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 1
  %20 = shl i32 1, %19
  %21 = and i32 %15, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 4, %28
  %30 = shl i32 1, %29
  %31 = and i32 %25, %30
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %24, %1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %72

45:                                               ; preds = %32
  %46 = load i32*, i32** @ns87415_control, align 8
  %47 = load i32, i32* @ns87415_count, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @ns87415_count, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = ptrtoint i32* %50 to i64
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, 768
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, -65
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %45
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  store i32 %62, i32* %66, align 4
  %67 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @pci_write_config_dword(%struct.pci_dev* %67, i32 64, i32 %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %71 = call i32 @pci_write_config_byte(%struct.pci_dev* %70, i32 85, i32 238)
  br label %72

72:                                               ; preds = %61, %37
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pci_get_legacy_ide_irq(%struct.pci_dev* %76, i32 %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %75, %72
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %96

89:                                               ; preds = %83
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ATA_DMA_STATUS, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outb(i32 96, i64 %94)
  br label %96

96:                                               ; preds = %89, %88
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_get_legacy_ide_irq(%struct.pci_dev*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
