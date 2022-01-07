; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_siimage.c_sil_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_siimage.c_sil_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.pci_dev = type { i32 }

@sil_set_pio_mode.tf_speed = internal constant [5 x i32] [i32 12938, i32 8835, i32 4737, i32 4291, i32 4289], align 16
@sil_set_pio_mode.data_speed = internal constant [5 x i32] [i32 12938, i32 8835, i32 4356, i32 4291, i32 4289], align 16
@XFER_PIO_0 = common dso_local global i64 0, align 8
@IDE_HFLAG_MMIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*)* @sil_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sil_set_pio_mode(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.pci_dev* @to_pci_dev(i32 %21)
  store %struct.pci_dev* %22, %struct.pci_dev** %5, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = call %struct.TYPE_11__* @ide_get_pair_dev(%struct.TYPE_11__* %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = call i64 @siimage_seldev(%struct.TYPE_11__* %25, i32 4)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = call i64 @siimage_selreg(%struct.TYPE_10__* %27, i32 2)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XFER_PIO_0, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  store i64 %37, i64* %13, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IDE_HFLAG_MMIO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %14, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %2
  %52 = load i64, i64* %14, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 244, i32 132
  br label %61

56:                                               ; preds = %2
  %57 = load i64, i64* %14, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 180, i32 128
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i32 [ %55, %51 ], [ %60, %56 ]
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 1
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %17, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %61
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @XFER_PIO_0, align 8
  %76 = sub nsw i64 %74, %75
  store i64 %76, i64* %18, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %13, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i64, i64* %18, align 8
  store i64 %81, i64* %13, align 8
  br label %82

82:                                               ; preds = %80, %71
  br label %83

83:                                               ; preds = %82, %61
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* @sil_set_pio_mode.data_speed, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* @sil_set_pio_mode.tf_speed, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %7, align 4
  %90 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @sil_iowrite16(%struct.pci_dev* %90, i32 %91, i64 %92)
  %94 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @sil_iowrite16(%struct.pci_dev* %94, i32 %95, i64 %96)
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = load i64, i64* %10, align 8
  %100 = sub i64 %99, 2
  %101 = call i32 @sil_ioread16(%struct.pci_dev* %98, i64 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, -513
  store i32 %103, i32* %8, align 4
  %104 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %15, align 8
  %107 = add i64 %105, %106
  %108 = call i64 @sil_ioread8(%struct.pci_dev* %104, i64 %107)
  store i64 %108, i64* %16, align 8
  %109 = load i64, i64* %17, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 48, i32 3
  %113 = xor i32 %112, -1
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %16, align 8
  %116 = and i64 %115, %114
  store i64 %116, i64* %16, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = load i64, i64* %12, align 8
  %119 = call i64 @ide_pio_need_iordy(%struct.TYPE_11__* %117, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %83
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, 512
  store i32 %123, i32* %8, align 4
  %124 = load i64, i64* %17, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 16, i32 1
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %16, align 8
  %130 = or i64 %129, %128
  store i64 %130, i64* %16, align 8
  br label %131

131:                                              ; preds = %121, %83
  %132 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i64, i64* %10, align 8
  %135 = sub i64 %134, 2
  %136 = call i32 @sil_iowrite16(%struct.pci_dev* %132, i32 %133, i64 %135)
  %137 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %138 = load i64, i64* %16, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %15, align 8
  %141 = add i64 %139, %140
  %142 = call i32 @sil_iowrite8(%struct.pci_dev* %137, i64 %138, i64 %141)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.TYPE_11__* @ide_get_pair_dev(%struct.TYPE_11__*) #1

declare dso_local i64 @siimage_seldev(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @siimage_selreg(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @sil_iowrite16(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @sil_ioread16(%struct.pci_dev*, i64) #1

declare dso_local i64 @sil_ioread8(%struct.pci_dev*, i64) #1

declare dso_local i64 @ide_pio_need_iordy(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @sil_iowrite8(%struct.pci_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
