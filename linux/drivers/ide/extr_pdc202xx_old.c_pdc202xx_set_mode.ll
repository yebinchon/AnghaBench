; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_pdc202xx_old.c_pdc202xx_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_pdc202xx_old.c_pdc202xx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.pci_dev = type { i32 }

@XFER_SW_DMA_0 = common dso_local global i32 0, align 4
@ide_disk = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @pdc202xx_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc202xx_set_mode(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 2
  %22 = add nsw i32 96, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @pci_read_config_byte(%struct.pci_dev* %26, i32 %27, i32* %8)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @pci_read_config_byte(%struct.pci_dev* %29, i32 %31, i32* %9)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 2
  %36 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 %35, i32* %10)
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %49 [
    i32 128, label %38
    i32 129, label %38
    i32 131, label %39
    i32 130, label %40
    i32 132, label %40
    i32 133, label %41
    i32 139, label %41
    i32 140, label %42
    i32 141, label %43
    i32 134, label %44
    i32 135, label %45
    i32 136, label %46
    i32 137, label %47
    i32 138, label %48
  ]

38:                                               ; preds = %2, %2
  store i32 32, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %50

39:                                               ; preds = %2
  store i32 32, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %50

40:                                               ; preds = %2, %2
  store i32 64, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %50

41:                                               ; preds = %2, %2
  store i32 96, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %50

42:                                               ; preds = %2
  store i32 96, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %50

43:                                               ; preds = %2
  store i32 224, i32* %12, align 4
  store i32 15, i32* %13, align 4
  br label %50

44:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  store i32 4, i32* %12, align 4
  br label %50

45:                                               ; preds = %2
  store i32 2, i32* %11, align 4
  store i32 6, i32* %12, align 4
  br label %50

46:                                               ; preds = %2
  store i32 3, i32* %11, align 4
  store i32 8, i32* %12, align 4
  br label %50

47:                                               ; preds = %2
  store i32 5, i32* %11, align 4
  store i32 12, i32* %12, align 4
  br label %50

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %2, %48
  store i32 9, i32* %11, align 4
  store i32 19, i32* %12, align 4
  br label %50

50:                                               ; preds = %49, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @XFER_SW_DMA_0, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, -64
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 138
  %60 = call i64 @ide_pio_need_iordy(%struct.TYPE_7__* %57, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, 32
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %54
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ide_disk, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, 16
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, -32
  store i32 %76, i32* %9, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @pci_write_config_byte(%struct.pci_dev* %77, i32 %78, i32 %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @pci_write_config_byte(%struct.pci_dev* %83, i32 %85, i32 %88)
  br label %109

90:                                               ; preds = %50
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, -225
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = and i32 %93, -16
  store i32 %94, i32* %10, align 4
  %95 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %12, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @pci_write_config_byte(%struct.pci_dev* %95, i32 %97, i32 %100)
  %102 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 2
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %13, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @pci_write_config_byte(%struct.pci_dev* %102, i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %90, %74
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @ide_pio_need_iordy(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
