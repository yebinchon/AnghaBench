; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_siimage.c_init_mmio_iops_siimage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_siimage.c_init_mmio_iops_siimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64, i32, i8*, i32, %struct.ide_io_ports, i64, i32 }
%struct.ide_io_ports = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.pci_dev = type { i32 }
%struct.ide_host = type { i8* }

@IDE_HFLAG_MMIO = common dso_local global i32 0, align 4
@SATA_STATUS_OFFSET = common dso_local global i64 0, align 8
@SATA_ERROR_OFFSET = common dso_local global i64 0, align 8
@SATA_CONTROL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @init_mmio_iops_siimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mmio_iops_siimage(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.ide_host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ide_io_ports*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.pci_dev* @to_pci_dev(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %3, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %13)
  store %struct.ide_host* %14, %struct.ide_host** %4, align 8
  %15 = load %struct.ide_host*, %struct.ide_host** %4, align 8
  %16 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  store %struct.ide_io_ports* %22, %struct.ide_io_ports** %7, align 8
  %23 = load i32, i32* @IDE_HFLAG_MMIO, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ide_io_ports*, %struct.ide_io_ports** %7, align 8
  %32 = call i32 @memset(%struct.ide_io_ports* %31, i32 0, i32 72)
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 192
  store i64 %39, i64* %8, align 8
  br label %43

40:                                               ; preds = %1
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 128
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.ide_io_ports*, %struct.ide_io_ports** %7, align 8
  %46 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  %49 = load %struct.ide_io_ports*, %struct.ide_io_ports** %7, align 8
  %50 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 2
  %53 = load %struct.ide_io_ports*, %struct.ide_io_ports** %7, align 8
  %54 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 3
  %57 = load %struct.ide_io_ports*, %struct.ide_io_ports** %7, align 8
  %58 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 4
  %61 = load %struct.ide_io_ports*, %struct.ide_io_ports** %7, align 8
  %62 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 5
  %65 = load %struct.ide_io_ports*, %struct.ide_io_ports** %7, align 8
  %66 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, 6
  %69 = load %struct.ide_io_ports*, %struct.ide_io_ports** %7, align 8
  %70 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %69, i32 0, i32 6
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 7
  %73 = load %struct.ide_io_ports*, %struct.ide_io_ports** %7, align 8
  %74 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %73, i32 0, i32 7
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 10
  %77 = load %struct.ide_io_ports*, %struct.ide_io_ports** %7, align 8
  %78 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %77, i32 0, i32 8
  store i64 %76, i64* %78, align 8
  %79 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %80 = call i64 @pdev_is_sata(%struct.pci_dev* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %43
  %83 = load i8*, i8** %5, align 8
  %84 = ptrtoint i8* %83 to i64
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 128
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, 260
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* @SATA_STATUS_OFFSET, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64 %92, i64* %97, align 8
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %98, 264
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @SATA_ERROR_OFFSET, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  store i64 %99, i64* %104, align 8
  %105 = load i64, i64* %8, align 8
  %106 = add i64 %105, 256
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @SATA_CONTROL_OFFSET, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %106, i64* %111, align 8
  br label %112

112:                                              ; preds = %90, %43
  %113 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = ptrtoint i8* %118 to i64
  %120 = load i64, i64* %6, align 8
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 8, i32 0
  %124 = sext i32 %123 to i64
  %125 = add i64 %119, %124
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @memset(%struct.ide_io_ports*, i32, i32) #1

declare dso_local i64 @pdev_is_sata(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
