; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_aec62xx.c_aec6260_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_aec62xx.c_aec6260_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.ide_host = type { %struct.chipset_bus_clock_list_entry* }
%struct.chipset_bus_clock_list_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @aec6260_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aec6260_set_mode(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ide_host*, align 8
  %7 = alloca %struct.chipset_bus_clock_list_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %5, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %20)
  store %struct.ide_host* %21, %struct.ide_host** %6, align 8
  %22 = load %struct.ide_host*, %struct.ide_host** %6, align 8
  %23 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %22, i32 0, i32 0
  %24 = load %struct.chipset_bus_clock_list_entry*, %struct.chipset_bus_clock_list_entry** %23, align 8
  store %struct.chipset_bus_clock_list_entry* %24, %struct.chipset_bus_clock_list_entry** %7, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 1
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i64, i64* %15, align 8
  %33 = call i32 @local_irq_save(i64 %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 64, %37
  %39 = call i32 @pci_read_config_byte(%struct.pci_dev* %34, i32 %38, i32* %12)
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.chipset_bus_clock_list_entry*, %struct.chipset_bus_clock_list_entry** %7, align 8
  %42 = call i32 @pci_bus_clock_list(i32 %40, %struct.chipset_bus_clock_list_entry* %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 64, %46
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @pci_write_config_byte(%struct.pci_dev* %43, i32 %47, i32 %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 68, %53
  %55 = call i32 @pci_read_config_byte(%struct.pci_dev* %50, i32 %54, i32* %11)
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 4, %56
  %58 = shl i32 0, %57
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 4, %60
  %62 = shl i32 7, %61
  %63 = xor i32 %62, -1
  %64 = and i32 %59, %63
  %65 = or i32 %58, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.chipset_bus_clock_list_entry*, %struct.chipset_bus_clock_list_entry** %7, align 8
  %68 = call i32 @pci_bus_clock_list_ultra(i32 %66, %struct.chipset_bus_clock_list_entry* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 4, %70
  %72 = shl i32 %69, %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 4, %74
  %76 = shl i32 7, %75
  %77 = xor i32 %76, -1
  %78 = and i32 %73, %77
  %79 = or i32 %72, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 68, %83
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @pci_write_config_byte(%struct.pci_dev* %80, i32 %84, i32 %85)
  %87 = load i64, i64* %15, align 8
  %88 = call i32 @local_irq_restore(i64 %87)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_bus_clock_list(i32, %struct.chipset_bus_clock_list_entry*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_bus_clock_list_ultra(i32, %struct.chipset_bus_clock_list_entry*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
