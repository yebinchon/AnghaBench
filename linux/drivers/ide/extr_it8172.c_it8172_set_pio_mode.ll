; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_it8172.c_it8172_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_it8172.c_it8172_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.pci_dev = type { i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@it8172_set_pio_mode.timings = internal constant [5 x i32] [i32 63, i32 60, i32 27, i32 18, i32 10], align 16
@ide_disk = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @it8172_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8172_set_pio_mode(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pci_dev* @to_pci_dev(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @XFER_PIO_0, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = call i32 @pci_read_config_word(%struct.pci_dev* %18, i32 64, i32* %6)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i32 68, i32* %7)
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, 16384
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 49158, i32 49248
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ide_disk, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 4
  %42 = shl i32 4, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %37, %2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @ide_pio_need_iordy(%struct.TYPE_7__* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 4
  %55 = shl i32 2, %54
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %50, %45
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 16128, i32 1032192
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* @it8172_set_pio_mode.timings, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 6
  %75 = add nsw i32 %74, 8
  %76 = shl i32 %70, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @pci_write_config_word(%struct.pci_dev* %79, i32 64, i32 %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @pci_write_config_dword(%struct.pci_dev* %82, i32 68, i32 %83)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @ide_pio_need_iordy(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
